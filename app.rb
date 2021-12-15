require('sinatra')
require('sinatra/reloader')
require('./lib/riddle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  Riddle.new()
  @riddles = Riddle.random
  erb(:riddler)
end

get('/:index') do
  @riddle = @riddles[params[:index].to_i]
  
  erb(:riddle)
end
