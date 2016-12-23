get '/ships' do
  @ships = Ship.all
  erb :"/ships/index.html"
end

get '/ships/:id' do
  @ship = Ship.find(params[:id])
  erb :"/ships/show.html"
end
