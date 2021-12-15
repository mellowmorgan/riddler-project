require('sinatra')
require('sinatra/reloader')
require('./lib/riddle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  Riddle.new()
  Riddle.random
  @index = 0
  erb(:riddler)
end

get('/:index') do
  if Riddle.index == 5
    erb(:winner)
  elsif Riddle.tries == 1
    @riddle = Riddle.random_riddles[params[:index].to_i]
    # Riddle.index = Riddle.index + 1
    @index = Riddle.index
    Riddle.tries = 2
    erb(:riddle)
  elsif (Riddle.index == 0) || (Riddle.check(params[:input].downcase, Riddle.random_riddles[Riddle.index - 1]))
    @riddle = Riddle.random_riddles[params[:index].to_i]
    Riddle.index = Riddle.index + 1
    @index = Riddle.index
    Riddle.tries = 0
    erb(:riddle)
  elsif Riddle.tries == 0
    Riddle.tries = Riddle.tries + 1
    redirect back
  else
    erb(:loser)
  end
end


