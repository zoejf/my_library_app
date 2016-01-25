class Book < ActiveRecord::Base
	belongs_to :author

	validates :title, :release_year, :image, :synopsis, presence: true
	validates :release_year, presence: true, numericality: { only_integer: true }

	scope :by_title, -> { order(title: :asc) }
	scope :by_year, -> { order(release_year: :asc)}

	
end
