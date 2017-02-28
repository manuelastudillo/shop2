class CreateRegions < ActiveRecord::Migration
  def change
 create_table :regiones do |t|

      t.string :nombre
       t.string :corfo
      t.string :codigo
      t.integer :numero

      t.timestamps null: false

    end
  end
end