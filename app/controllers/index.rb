get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/play/:deck'
  @deck = Deck.

  erb :play
end