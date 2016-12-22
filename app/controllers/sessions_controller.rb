get '/login' do
  erb :"/users/login.html"
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect '/'
  else
    @error = "Why you trying to hack my info bruh?"
    erb :"/user/login.html"
  end
end

delete '/logout' do
  logout
  redirect '/'
end
