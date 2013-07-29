# ReadMe.md

## Create new application
`rails new rails-devise --skip-bundle`

## Edit Gemfile
### change the source to taobao
`source 'http://ruby.taobao.org'`
### add devise
`gem 'devise'`

## Bundle install gem
`bundle install`


## Create scaffold to check.
### Add model USER via scaffold , and init db.
`rails g scaffold user name:string age:integer`

`rake db:migrate`

### Redirect home to user index
1. Remove public/index.html
2. Edit routes.rb : 
`root :to => "users#index" `

## *CHECKPOINT*
*Start rails s and goto localhost:3000*



## Use devise generate the framework in this application
`rails generate devise:install`

## Generate views
`rails g devise:views`

## Integrate devise with User , update db as user talbe changed
`rails g devise User`

`rake db:migrate`

## Add devise relate attributes to model user
`attr_accessible :email, :password, :password_confirmation, :remember_me`


## Add before filter to contoller
@users_controller.rb
`before_filter :authenticate_user!`

## Add html elements 
@app/views/layouts/application.html.erb


## *CHECKPOINT*
*Start rails s and goto localhost:3000*



[ Next action ]
## Update views/devise/registrations views to add User.name and User.age in it.

