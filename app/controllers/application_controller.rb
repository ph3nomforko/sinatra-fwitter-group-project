require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    enable :sessions
    set :views, 'app/views'
  end

end
