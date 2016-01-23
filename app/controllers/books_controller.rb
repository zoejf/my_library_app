class BooksController < ApplicationController

	def index
		@books = Book.all
		render :index
	end

	def show
		@book = Book.find(params[:id])
		@author = Author.find(@book.author_id)
		render :show
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
			redirect_to author_path(author)
		else
			redirect_to new_book_path(author)
		end
	end

	def destroy
		book_id = params[:id]
		book = Book.find_by_id(book_id)
		book.destroy
		redirect_to books_path
	end

	private
		def book_params
			params.require(:book).permit(:title, :release_year, :image, :author_id)
		end

end
