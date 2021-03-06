# temp_user INDEX
get '/temp_users' do
  @temp_users = TempUser.all
  erb :'temp_users/show'
end

# temp_user NEW
get '/temp_users/new' do
  @temp_user = TempUser.new
  erb :'temp_users/new'
end

# temp_user CREATE
post '/temp_users' do
  #params passes TempUser.categories will be passed here
  @temp_user = TempUser.new(params[:category])
  if @temp_user.save
    redirect '/temp_users'
  else
    @errors = @temp_user.errors.full_messages
    erb :'temp_users/new'
  end
end

# temp_user SHOW
get '/temp_users/:id' do
  @temp_user = TempUser.find(params[:id])
  erb :'temp_users/show'
end

# temp_user EDIT
get '/temp_users/:id/edit' do
  @temp_user = TempUser.find(params[:id])
  erb :'temp_users/edit'
end


# temp_user UPDATE
put '/temp_users/:id' do
  @temp_user = TempUser.find(params[:id])
  @temp_user.update(params[:category])
  redirect "/temp_users/show"
end


# temp_user DESTROY
delete '/temp_users/:id' do
  p "********   ******" * 5
  @temp_user = TempUser.find(params[:id])
  @ally_id = Chat.where(params[:id])[0].ally_id
  @temp_user.destroy
  redirect "/temp_users/review"
end

post 'temp_users/end/:ally_id' do


end