class UsensController < ApplicationController
  before_action :set_usen, only: [:show, :edit, :update, :destroy]

  # GET /usens
  # GET /usens.json
  def index
    @usens = Usen.all
  end

  # GET /usens/1
  # GET /usens/1.json
  def show
  end

  # GET /usens/new
  def new
    @usen = Usen.new
  end

  # GET /usens/1/edit
  def edit
  end

  # POST /usens
  # POST /usens.json
  def create
    @usen = Usen.new(usen_params)

    respond_to do |format|
      if @usen.save
        format.html { redirect_to @usen, notice: 'Usen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usen }
      else
        format.html { render action: 'new' }
        format.json { render json: @usen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usens/1
  # PATCH/PUT /usens/1.json
  def update
    respond_to do |format|
      if @usen.update(usen_params)
        format.html { redirect_to @usen, notice: 'Usen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usens/1
  # DELETE /usens/1.json
  def destroy
    @usen.destroy
    respond_to do |format|
      format.html { redirect_to usens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usen
      @usen = Usen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usen_params
      params.require(:usen).permit(:name, :email)
    end
end
