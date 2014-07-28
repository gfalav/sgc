class Cliente < ActiveRecord::Base

	validates :apellido, presence:true
	validates :documento, presence:true, uniqueness: true

	has_many :cuentas
end
