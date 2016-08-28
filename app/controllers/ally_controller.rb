# DISPLAY
# get '/allies' do
#   @allies = Ally.all

#   erb :'/allies/index'
# end

get '/allies/new' do

  erb :'/allies/new'
end

post '/allies' do
  ally = params[:ally]
  if params[:password_confirmation] == ally[:password_hash]

    @ally = Ally.new(params[:ally])
    if @ally.save
      # session[:id] = @ally.id
      redirect "/allies/#{@ally.id}"
    else
      @errors = @ally.errors.full_messages
      erb :'error'
    end
  else
    @errors = ["Passwords do not match!"]
    erb :'allies/new'
  end
end

get '/allies/:id' do
  @ally = Ally.find(params[:id])
#  @status = Ally.is_available
  erb :'/allies/show'
end

get '/allies/:id/edit' do
  @ally = Ally.find(params[:id])

  erb :'/allies/edit'
end

put '/allies/:id' do
  @ally = Ally.find(params[:id])

  redirect "/allies/#{@ally.id}"
#  @ally.is_available
end

# delete '/allies/:id' do
#   @ally = Ally.find(params[:id])
#   @ally.destroy
#   redirect "/allies"
# end
