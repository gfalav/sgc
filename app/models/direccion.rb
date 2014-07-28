class Direccion < ActiveRecord::Base

	has_many :cuentas
	has_many :suministros

	belongs_to :calle
end
