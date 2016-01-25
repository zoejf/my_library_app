class PagesController < ApplicationController
  def index
  	@root_page = true
  	render :index
  end
end
