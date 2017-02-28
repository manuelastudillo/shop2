class ForeingnProvincia < ActiveRecord::Migration
  def change
  	  	add_foreign_key :provincias, :regiones, column: :region_id, primary_key: "id"

  end
end