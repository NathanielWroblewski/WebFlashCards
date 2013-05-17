get '/' do

  @list_decks = Deck.all
  erb :index
end

get '/play/:name' do
  @deck = Deck.find_by_name(params[:name])
  erb :play
end
