class Localidad < ActiveRecord::Base
	validates :localidad, presence: true
	validates :municipio_id, presence: true

	belongs_to :municipio
	has_many :barrios

end
