get '/sessions/new' do

  erb :'/sessions/new'
end

post '/sessions' do
  @ally = Ally.find_by_email(params[:email])
  if @ally && @ally.password_hash == params[:password_hash]
    session[:id] = @ally.id
    erb :'index' #Where to redirect?
  else
    @errors = ["Username && Password not found."]
    erb :'error'
  end
end

delete '/sessions' do
  session[:id] = nil
  redirect :'/'
end
