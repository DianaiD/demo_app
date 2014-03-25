class CreateUsens < ActiveRecord::Migration
  def change
    create_table :usens do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
