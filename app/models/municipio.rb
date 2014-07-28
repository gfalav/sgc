class Municipio < ActiveRecord::Base
	validates :municipio, presence: true
	validates :departamento_id, presence: true

	belongs_to :departamento
	has_many :localidads

end
