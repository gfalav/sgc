class Edesal < ActiveRecord::Base

	belongs_to :contrato
	
	has_many :suministros

end
