get '/' do
	p "**** $$$$$$$$$"  * 10
	@categories = Category.all
  erb :'/index'
end
