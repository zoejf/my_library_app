require 'rails_helper'

RSpec.describe Author, type: :model do
  
	before do
		author_params = Hash.new
		author_params[:first_name] = FFaker::Name.first_name
		author_params[:last_name] = FFaker::Name.last_name
		author_params[:year_born] = rand(1800..1900)
		author_params[:year_died] = rand(1901..2000)
		author_params[:image] = FFaker::Internet.http_url
		author_params[:bio] = FFaker::Lorem.paragraph
		@author = Author.new(author_params)
	end

	describe "#full_name" do
		it "joins first name and last name" do
			expect(@author.full_name).to eq("#{@author.first_name} #{@author.last_name}")
		end
	end

	describe "#book_count" do
		before do
			book_params = Hash.new
			book_params[:title] = "On The Road"
			book_params[:release_year] = 1957
			book_params[:image] = FFaker::Internet.http_url
			book_params[:synopsis] = FFaker::Lorem.sentence 
			book_params[:author_id] = @author.id
			@book = Book.new(book_params)
			@author.books << @book
		end

		it "returns number of books by an author" do
			expect(@author.book_count).to eq(1)
		end
	end

end
