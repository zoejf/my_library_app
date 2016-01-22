class BooksController < ApplicationController

	def index
		@books = Book.all
		render :index
	end

	def new
		@author_id = params[:id]
		@author = Author.find(params[:id])
		@book = Book.new
		render :new
	end

	def create
		book = Book.new(book_params)
		author = Author.find(book_params[:author_id])
		if book.save
			# book.author_id = book_params.author_id
			redirect_to author_path(author)
		else
			redirect_to new_book_path(author)
		end
	end

	def destroy
		
	end

	private
		def book_params
			params.require(:book).permit(:title, :release_year, :image, :author_id)
		end

end
