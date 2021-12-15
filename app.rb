require('sinatra')
require('sinatra/reloader')
require('./lib/riddle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  Riddle.new()
  @index = 0
  @riddles = Riddle.random
  erb(:riddler)
end

get('/:index') do
  @riddle = @riddles[:index]
  @index++
  erb(:riddle)
end
