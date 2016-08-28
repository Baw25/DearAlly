# temp_user INDEX

# get '/temp_users' do
#   @temp_users = TempUser.all
#   erb :'temp_users/show'
# end

# temp_user NEW
# get '/temp_users/new' do
#   @temp_user = TempUser.new
#   erb :'temp_users/new'
# end


# temp_user CREATE
post '/temp_users' do
  #params passes TempUser.categories will be passed here
  p params
  @category = Category.find(params[:category_id])
  puts @category
  @temp_user = TempUser.new()
  @temp_user.category = @category.title
  if @temp_user.save
    redirect "/temp_users/#{@temp_user.id}"
  else
    @errors = @temp_user.errors.full_messages
    erb :'temp_users/new'
  end
end

# temp_user SHOW
get '/temp_users/:id' do
  
  #start the instance of the chat
  @ally = Ally.last
  @temp_user = TempUser.find(params[:id])
  puts @temp_user
  puts @temp_user.inspect
  redirect "/allies/#{@ally.id}"
  #need to find a chat box

  erb :'temp_users/show'
end

# temp_user EDIT

# get '/temp_users/:id/edit' do
#   @temp_user = TempUser.find(params[:id])
#   erb :'temp_users/edit'
# end

get 'temp_users' do
  erb :'temp_users'
end


# temp_user UPDATE
# put '/temp_users/:id' do
#   @temp_user = TempUser.find(params[:id])
#   @temp_user.update(params[:category])
#   redirect "/temp_users/show"
# end
get '/temp_users/review' do 
  erb :'temp_users/review'
end

# temp_user DESTROY
delete '/temp_users/:id' do

  @temp_user = TempUser.find(params[:id])
  #@ally_id = Chat.where(params[:id])[0].ally_id
  @temp_user.destroy

  redirect '/temp_users/review'

end

