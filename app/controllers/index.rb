get '/' do

  @list_decks = Deck.all
  erb :index
end

get '/play/:id' do
  @deck = Deck.find_by_name(params[:id])
  erb :play
end
