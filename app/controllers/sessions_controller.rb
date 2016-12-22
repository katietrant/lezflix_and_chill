get '/login' do
  erb :"/users/login.html"
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect '/'
  else
    @error = "You butched up the info... try again"
    erb :"/users/login.html"
  end
end

delete '/logout' do
  logout
  redirect '/'
end
