get '/login' do
  erb :"/users/login.html"
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect "/users/#{@user.id}"
  else
    @error = "You butch-ered the info... try again"
    erb :"/users/login.html"
  end
end

delete '/logout' do
  logout
  redirect '/'
end
