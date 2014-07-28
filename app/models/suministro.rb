class Suministro < ActiveRecord::Base

	belongs_to :direccion

	has_one :edesal
	
end
