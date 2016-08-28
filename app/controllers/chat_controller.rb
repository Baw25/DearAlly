require 'bundler'
Bundler.require

class SinatraPusher < Sinatra::Base
  configure do
    register Sinatra::Reloader
    Pusher.app_id = '242139'
    Pusher.key = '0abdb79d2684ba446a83'
    Pusher.secret = '45523cbf75e99c8f3d75'
  end

  get '/' do
    erb :"_chat_box_partial"
  end

  post '/messages' do
    Pusher['test_channel'].trigger('new_message', :message => params['message'])
  end
end
