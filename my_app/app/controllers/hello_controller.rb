class HelloController < ApplicationController


  # GET /hello
  # GET /hello.json
  def index
    @var_index = []
    @var_index << "zhaoli1" 
    @var_index << "zhaoli2" 
    @var_index << "zhaoli3"
    @var_index << params[:name]

  end
    

  def result 
    p 'name'
    @name = params[:name]
    @name ||= []
    @var_result = @name.to_s

    # render text: params[:name].inspect


  end
    
end
