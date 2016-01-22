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
		@author = Author.new
		render :new
	end

	def create	
		author = Author.new(author_params)
		if author.save
			redirect_to author_path(author)
		else
			redirect_to new_author_path
		end
	end

	def edit
		author_id = params[:id]
		@author = Author.find_by_id(author_id)
		render :edit
	end

	def update
		author_id = params[:id]
		author = Author.find_by_id(author_id)
		author.update_attributes(author_params)
		redirect_to author_path(author)
	end

	def destroy
		author_id = params[:id]
		author = Author.find_by_id(author_id)
		author.destroy
		redirect_to authors_path
	end

	private
		def author_params
			params.require(:author).permit(:first_name, :last_name, :year_born, :year_died, :image)
		end

end
