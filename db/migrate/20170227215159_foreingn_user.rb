class ForeingnUser < ActiveRecord::Migration
  def change

  	 add_foreign_key :users, :comunas, column: :comuna_id, primary_key: "id"
  end
end
