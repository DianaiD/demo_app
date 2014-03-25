require 'test_helper'

class UsensControllerTest < ActionController::TestCase
  setup do
    @usen = usens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usen" do
    assert_difference('Usen.count') do
      post :create, usen: { email: @usen.email, name: @usen.name }
    end

    assert_redirected_to usen_path(assigns(:usen))
  end

  test "should show usen" do
    get :show, id: @usen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usen
    assert_response :success
  end

  test "should update usen" do
    patch :update, id: @usen, usen: { email: @usen.email, name: @usen.name }
    assert_redirected_to usen_path(assigns(:usen))
  end

  test "should destroy usen" do
    assert_difference('Usen.count', -1) do
      delete :destroy, id: @usen
    end

    assert_redirected_to usens_path
  end
end
