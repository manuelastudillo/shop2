class CreateComunas < ActiveRecord::Migration
	 def change
	     create_table :comunas do |t|
	     t.string :nombre
	     t.integer :provincia_id

	     t.timestamps null: false
	   end
  end
end