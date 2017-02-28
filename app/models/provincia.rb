class Provincia < ActiveRecord::Base
		  self.table_name = "provincias"
		    belongs_to :region
		    has_many :comuna
end