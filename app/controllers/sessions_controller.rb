get '/sessions/new' do

  erb :'/sessions/new'
end

post '/sessions' do
  @ally = Ally.find_by_email(params[:email])
  if @ally && @ally.password_hash == params[:password_hash]
    session[:id] = @ally.id

    redirect "/allies/#{@ally.id}"
  else
    @errors = ["Username && Password not found."]
    erb :'error'
  end
end

delete '/sessions' do
  session[:id] = nil
  #user logs out on application level header
  redirect '/'
end
