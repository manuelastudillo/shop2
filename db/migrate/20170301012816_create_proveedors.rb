class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :razon_social
      t.string :rut
      t.string :domicilio
      t.integer :telegono1
      t.integer :telefono2
      t.integer :web
      t.integer :mail
      t.string :descripcion
      t.string :slug
      t.references :comuna, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
