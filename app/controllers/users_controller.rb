get '/users/new' do
  erb :"/users/new.html"
end


post '/users' do
  if params[:user][:password] == params[:confirm_password]
    @user = User.new(params[:user])
    if @user.save
      login(@user)
      redirect "/"
    else
      @error = "Lez try that again shall we?"
      erb :"/users/new.html"
    end
  else
    @error = "Oh no! Your passwords aren't homo-geneous..."
    erb :"/users/new.html"
  end
end

 get '/users/:id' do
   @user = User.find(params[:id])
   erb :"/users/show.html"
 end


 get '/users/:id/edit' do
   @user = User.find(params[:id])
     if @user.update(params[:user])
       redirect "/users/#{@user.id}"
     else
       @error = "Please try again"
         erb :"/users/edit.html"
     end
 end


 put 'users/:id' do
   @user = User.find(params[:id])
   if @user.update(params[:user])
     redirect "/users/#{@user.id}"
   else
     @error = "Please try again"
     erb :"/users/edit.html"
   end
 end


 delete '/users/:id' do
   @user = User.find(params[:id])
   @user.destroy
   redirect "/"
 end
