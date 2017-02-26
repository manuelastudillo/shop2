class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
