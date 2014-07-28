class Calle < ActiveRecord::Base
	validates :calle, presence:true
	validates :barrio_id, presence:true
	
	belongs_to :barrio
	has_many :suministros
end
