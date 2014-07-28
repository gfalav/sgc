class Pais < ActiveRecord::Base

	has_many :provincias

	validates :pais, presence: true, uniqueness: true
	
end
