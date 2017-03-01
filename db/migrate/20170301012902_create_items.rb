class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nombre
      t.string :codigo
      t.string :comision
      t.string :descuento
      t.integer :precio_venta
      t.string :precio_compra
      t.string :foto
      t.references :proveedor, index: true, foreign_key: true
      t.string :descripcion
      t.references :brand, index: true, foreign_key: true
      t.references :unit, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.integer :stock
      t.integer :min_stock
      t.integer :precio
      t.string :slug

      t.timestamps null: false
    end
  end
end
