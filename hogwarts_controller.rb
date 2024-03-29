require ( 'sinatra' )
require ( 'sinatra/contrib/all' )
require ( 'pry-byebug' )

require_relative( './models/student.rb' )
also_reload( './models/*' )

#INDEX
get '/students' do
  @students = Student.all()
  erb( :index )
end

#NEW
get '/students/new' do
  erb( :new )
end

#CREATE
post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

#SHOW
get '/students/:id' do
  @student = Student.find( params[:id] )
  erb( :show )
end
