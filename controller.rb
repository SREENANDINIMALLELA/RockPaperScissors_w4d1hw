require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game.rb')
also_reload('./models/*')

get '/player1/:selection'do
@game=Game.rockPaperScissor(params[:selection])
 erb(:result)
end

get '/'do
@game=Game.rockPaperScissor(params[:selection])
erb(:home)
end

get '/about_us'do
  erb(:about_us)
end
