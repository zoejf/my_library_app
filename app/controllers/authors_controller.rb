class AuthorsController < ApplicationController

	def index
		@authors = Author.all
		render :index
	end

	def show
		@author = Author.find(params[:id])
		render :show
	end

	private
		def author_params
			params.require(:author).permit(:first_name, :last_name, :year_born, :year_died, :image)
		end

end
