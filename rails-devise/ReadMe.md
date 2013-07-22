ReadMe.md
1. Create new application
    # rails new rails-devise --skip-bundle

2. Edit Gemfile
    *. change the source to taobao
        source 'http://ruby.taobao.org'
    *. add devise
        gem 'devise' 

3. bundle install gem
    # bundle install

4. use devise generate the framework in this application
    # rails generate devise:install
