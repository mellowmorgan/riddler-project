require('sinatra')
require('sinatra/reloader')
require('./lib/riddle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  Riddle.new()
  Riddle.random
  @index=0
  erb(:riddler)
end

get('/:index') do
  @riddle = Riddle.random_riddles[params[:index].to_i]
  Riddle.index=Riddle.index+1
  @index=Riddle.index
  erb(:riddle)
end
post('/:index') do
  
end
