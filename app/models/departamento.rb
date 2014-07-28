class Departamento < ActiveRecord::Base

	validates :departamento, presence: true
	validates :provincia_id, presence: true

	belongs_to :provincia
	has_many :municipios

end
