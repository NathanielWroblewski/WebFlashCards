get '/' do
  logged_in #Checks for user session.
  erb :index
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