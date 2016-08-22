get '/' do
  @greeting = "Yo what's up?"
  @discussions = Discussion.all
  erb :index
end
