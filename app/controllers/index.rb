get '/' do
  logged_in
  @list_decks = Deck.all
  erb :index
end

get '/play/:id' do
  @deck = Deck.find_by_name(params[:id])
  erb :play
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

