class Contrato < ActiveRecord::Base

	belongs_to :cuenta
	has_many :edesals
end
