class CreateProvincia < ActiveRecord::Migration
  def change
    create_table :provincias do |t|
      t.string :nombre
      t.integer :region_id


      t.timestamps null: false
    end
  end
end