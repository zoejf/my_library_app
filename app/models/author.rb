class Author < ActiveRecord::Base
	has_many :books, dependent: :destroy

	def full_name	
		"#{first_name} #{last_name}"
	end

	def book_count
		books.length
	end

end
