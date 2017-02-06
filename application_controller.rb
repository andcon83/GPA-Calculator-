require 'bundler'
Bundler.require
require_relative 'models/gpa.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/findgpa'do
    
  @result=findgpa(grades)
    erb :results 
end
  
end