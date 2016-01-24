require 'rails_helper'

RSpec.describe BooksController, type: :controller do
	before do
		user_params = Hash.new
		user_params[:name] = FFaker::Name.name
		user_params[:email] = FFaker::Internet.email
		user_params[:password] = FFaker::Lorem.words(2).join
		user_params[:password_confirmation] = user_params[:password]
		@current_user = User.create(user_params)
		allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@current_user)

		author_params = Hash.new
		author_params[:first_name] = FFaker::Name.first_name
		author_params[:last_name] = FFaker::Name.last_name
		author_params[:year_born] = rand(1800..1900)
		author_params[:year_died] = rand(1901..2000)
		author_params[:image] = FFaker::Internet.http_url
		author_params[:bio] = FFaker::Lorem.paragraph
		@author = Author.create(author_params)
	end

	describe "GET #index" do
		it "should assign @books" do
			all_books = Book.all
			get :index
			expect(assigns(:books)).to eq(all_books)
		end

		it "should render the index view" do
			get :index
			expect(response).to render_template(:index)
		end
	end

	describe "POST #create" do
		context "success" do
			it "should add new book to author" do
				books_count = @author.books.count
				post :create, book: {title: "On The Road", release_year: 1957, image: "http://image.jpg", synopsis: "It's great", author_id: @author.id}
				expect(@author.books.count). to eq(books_count + 1)
			end

			it "should redirect to author path" do
				post :create, book: {title: "On The Road", release_year: 1957, image: "http://image.jpg", synopsis: "It's great", author_id: @author.id}
				expect(response.status).to be(302)
				expect(response.location).to match(/\/authors\/\d+/)
			end
		end

		context "failure" do
			it "should redirect to new_book_path" do
				post :create, book:{ title: nil, release_year: nil, image: nil, synopsis: nil, author_id: @author.id }
				expect(response).to redirect_to(new_book_path(@author))
			end
		end
	end

end
