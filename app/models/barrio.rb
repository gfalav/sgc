class Barrio < ActiveRecord::Base
	validates :barrio, presence: true
	validates :localidad_id, presence: true

	belongs_to :localidad
	has_many :calles
end
