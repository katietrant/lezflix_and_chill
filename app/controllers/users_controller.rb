get '/users/new' do
   erb :"/users/new.html"
 end


 post '/users' do
   p params
   if params[:user][:password] == params[:confirm_password]
     @user = User.new(params[:user])
     if @user.save
       login(@user)
       redirect "/users/#{@user.id}"
     else
       erb :"/users/new.html"
     end
     @error = "Passwords do not match bruh"
     erb :"/users/new.html"
   end
 end

 
 get '/users/:id' do
   @user = User.find(params[:id])
   erb :'/users/show.html'
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
