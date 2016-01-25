#My Classics Library

by Zoe Foss (January 2016)

My Classics Library is an app that organizes classic authors and their books. Any visitor to the site can browse authors and their books. Users can log in for the access to create, edit, and remove authors or add and remove books. 

###Technologies Used
- Ruby on Rails
- PostgreSQL
- bcrypt
- RSPEC

###To Run Locally
- Clone github project link
- `bundle install`
- Set up database with: 
	* `rake db:create`
	* `rake db:migrate`
	* `rake db:seed`
- Start a server with `rails s`
- Tests can be run with `rspec` command

###With more time I would try ...
- Implement image uploading and saving with Paperclip gem 
- Use SASS to create more concise stylesheets
- Create user profile page for and functionality saving favorite books or authors
- OAuth: Allow users to log in with <a href="https://www.goodreads.com/">Goodreads</a>

