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
		if current_user
			@author_id = params[:id]
			@author = Author.find(params[:id])
			@book = Book.new
			render :new
		else
			flash[:notice] = 'You must be logged in to add a book.'
			redirect_to login_path
		end
	end

	def create
		if current_user
			book = Book.new(book_params)
			author = Author.find(book_params[:author_id])
			if book.save
				flash[:notice] = 'New book added successfully.'
				redirect_to author_path(author)
			else
				flash[:error] = book.errors.full_messages.join(", ")
				redirect_to new_book_path(author)
			end
		else
			redirect_to login_path
		end
	end

	def destroy
		if current_user
			book_id = params[:id]
			book = Book.find_by_id(book_id)
			book.destroy
			redirect_to books_path
		else
			flash[:notice] = 'You must be logged in to delete a book.'
			redirect_to login_path
		end	
	end

	private
		def book_params
			params.require(:book).permit(:title, :release_year, :image, :author_id, :synopsis)
		end

end
