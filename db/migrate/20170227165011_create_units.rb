class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :nombre
      t.string :slug
      t.timestamps null: false
    end
  end
end
