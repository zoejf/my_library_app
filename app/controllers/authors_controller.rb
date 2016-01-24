class AuthorsController < ApplicationController

	def index
		@authors = Author.all
		render :index
	end

	def show
		@author = Author.find(params[:id])
		render :show
	end

	def new
		if current_user
			@author = Author.new
			render :new
		else
			flash[:notice] = 'You must be logged in to add an author.'
			redirect_to login_path
		end
	end

	def create	
		if current_user
			author = Author.new(author_params)
			if author.save
				flash[:notice] = 'Author added to Library.'
				redirect_to author_path(author)
			else
				flash[:error] = author.errors.full_messages.join(", ")
				redirect_to new_author_path
			end
		else
			redirect_to login_path
		end
	end

	def edit
		if current_user
			author_id = params[:id]
			@author = Author.find_by_id(author_id)
			render :edit
		else
			flash[:notice] = 'You must be logged in to edit an author'
			redirect_to login_path
		end
	end

	def update
		author_id = params[:id]
		author = Author.find_by_id(author_id)
		author.update_attributes(author_params)
		redirect_to author_path(author)
	end

	def destroy
		if current_user 	
			author_id = params[:id]
			author = Author.find_by_id(author_id)
			author.destroy
			redirect_to authors_path
		else
			flash[:notice] = 'You must be logged in to delete an author'
			redirect_to login_path
		end
	end

	private
		def author_params
			params.require(:author).permit(:first_name, :last_name, :year_born, :year_died, :image, :bio)
		end

end
