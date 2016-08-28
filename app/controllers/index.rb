get '/' do
	@categories = Category.all
	if session[:ally_id]
		redirect "/allies/#{session[:ally_id]}"
	else
  	erb :'/index'
	end
end
