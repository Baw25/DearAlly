# DISPLAY
get '/allies' do
  @allies = Ally.all

  erb :'/allies/index'
end

get '/allies/new' do

  erb :'/allies/new'
end
#CREATE
post '/allies' do
  ally = params[:ally]
  if params[:password_confirmation] == ally[:password_hash]

    @ally = Ally.new(params[:ally])
    if @ally.save
      session[:id] = @ally.id
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
  @status = @ally.available?
  erb :'/allies/show'
end

# EDIT
get '/allies/:id/edit' do
  @ally = Ally.find(params[:id])

  erb :'/allies/edit' #
end

# UPDATE
put '/allies/:id' do
  #get params from url
  @ally = Ally.find(params[:id])
  @ally.assign_attributes(params[:ally])
  if @ally.save
    redirect "/allies/#{@ally.id}" #redirect back to ally index page
  else
    erb :'allies/edit' #show edit ally view again(potentially displaying errors)
  end
end


delete '/allies/:id' do
  @ally = Ally.find(params[:id])
  @ally.destroy
  redirect "/allies"
end
