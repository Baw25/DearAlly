get '/sessions/viewer' do 
  session.inspect
end

get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  ses = params[:session]
  @ally = Ally.find_by(params[:email])
  
  if @ally.password_hash == ses[:password_hash]
    session[:ally_id] = @ally.id
    
    redirect "/allies/#{@ally.id}"
  else
    @errors = ["Username && Password not found."]
    redirect "/sessions/new"
  end
end

delete '/sessions' do
  session.delete(:ally_id)
  redirect '/'
end

