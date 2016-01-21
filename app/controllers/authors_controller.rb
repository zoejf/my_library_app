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
		
	end

	def update
		
	end

	def destroy
		
	end

	private
		def author_params
			params.require(:author).permit(:first_name, :last_name, :year_born, :year_died, :image)
		end

end
