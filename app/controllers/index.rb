get '/' do
  @list_decks = Deck.all
  erb :index
end

get '/play/:id' do
  @deck = Deck.find_by_id(params[:id])
  erb :play
end

post '/check_answer' do
  @card = Card.find(params[:card_id])
  (@card.answer == params[:user_answer]).to_s
end
 
#LOGIN / SIGNUP / LOGOUT
post '/login' do 
  authenticate(params[:email], params[:password])
end

post '/signup' do
  create_user(params[:name], params[:email], params[:password])
end

get '/logout' do
  logout
end


#USER PROFILE
get '/user/profile' do
  erb :profile
end

