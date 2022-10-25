require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
# DatabaseConnection.connect('music_library_test')

# Perform a SQL query on the database and get the result set.
# sql = 'SELECT id, title, release_year FROM albums;'
#result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
#result.each do |record|
#  p record
#end

class Application < Sinatra::Base
  
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  # test commands

  get '/' do
    return 'Hello, get'
  end
  
  post '/' do
    return 'Hello, post'
  end

  get '/hello' do
    name = params[:name]
    return "Hello #{name}"
  end

  get '/names' do
    names = params[:names]
    return names
  end

  post '/sort-names' do
    names = params[:names]
    name_list = names.split(', ')
    return name_list.sort.join(', ') 
  end

  post '/welcome' do
    name = params[:name]
    message = params[:message]
    return "Hello, #{name}"
  end

  post '/submit' do
    name = params[:name]
    message = params[:message]
    return "Thanks #{name}, you sent this message: #{message}"
  end

  # music library commands

  get '/' do
    return 'Hello, get'
  end
  
  post '/' do
    return 'Hello, post'
  end

end