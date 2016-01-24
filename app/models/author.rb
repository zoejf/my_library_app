class Author < ActiveRecord::Base
	has_many :books, dependent: :destroy

	validates :first_name, :last_name, :image, :bio, presence: true
	validates :year_born, presence: true, numericality: { only_integer: true }
	validates :year_died, numericality: { only_integer: true }, allow_blank: true

	def full_name	
		"#{first_name} #{last_name}"
	end

	def book_count
		books.length
	end

end
