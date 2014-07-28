class Cuenta < ActiveRecord::Base

	belongs_to :cliente
	belongs_to :direccion
	
	has_many :contratos
	
end
