ReadMe.md
1. Create new application
    # rails new rails-devise --skip-bundle

2. Edit Gemfile
    * change the source to taobao
        source 'http://ruby.taobao.org'
    * add devise
        gem 'devise' 

3. Bundle install gem
    # bundle install


4. Create scaffold to check.
  4.1 Add model USER via scaffold , and init db.
    # rails g scaffold user name:string age:integer
    # rake db:migrate 

  4.2 Redirect home to user index
    * Remove public/index.html
    * Edit routes.rb :
        root :to => "user#index"

*CHECKPOINT*
Start rails s and goto localhost:3000



5. Use devise generate the framework in this application
    # rails generate devise:install

6. Generate views
    # rails g devise:views

7. Integrate devise with User , update db as user talbe changed
    # rails g devise User
    # rake db:migrate 

8. Add devise relate attributes to model user
    attr_accessible :email, :password, :password_confirmation, :remember_me 


9. Add before filter to contoller
    @users_controller.rb
      before_filter :authenticate_user!

10. Add html elements 
    @app/views/layouts/application.html.erb

*CHECKPOINT*
Start rails s and goto localhost:3000


[ Next action ]
11. Update views/devise/registrations views to add User.name and User.age in it.

