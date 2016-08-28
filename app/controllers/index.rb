get '/' do
	@categories = Category.all
  erb :'/index'
end
