class Book < ActiveRecord::Base
	belongs_to :author

	validates :title, :release_year, :image, :bio, presence: true
	validates :release_year, presence: true, numericality: { only_integer: true }
	
end
