helpers do
  
  def logged_in
    # @user = User.find(session[:user_id])
  end

  def logout
    session.clear
    redirect '/'
  end

  def create_user(name, email, password)
    @user = User.new(name, email)
    @user.password = password
    @user.save!
    redirect '/user/profile'
  end

  def authenticate(email, password)
    @user = User.find_by_email(email)
    if @user.password == password
      session[:user_id] = @user.id
      redirect '/user/profile' 
    else 
      @errors[:login] = "Invalid Email and/or Password"
      redirect '/'
    end
  end

end