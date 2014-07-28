class Provincia < ActiveRecord::Base

	validates :provincia, presence: true
	validates :pais_id, presence: true

	belongs_to :pais
	has_many :departamentos
end
