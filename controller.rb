# require('pry-byebug')
require('sinatra')
require('sinatra/contrib/all')

require_relative('./db/sql_runner.rb')
require_relative('./models/students')
require_relative('./models/houses')
also_reload('./models/*')


get '/students' do
  @houses = House.find_all
  @students = Student.find_all
  erb(:index)
end

get '/students/new' do
  @houses = House.find_all
  erb(:new)
end



# binding.pry
# nil
