require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    enable :sessions
    set :views, 'app/views'
    set :session_secret, "secret_fwitter"
  end

  get '/' do
    erb :index
  end

  helpers do
    def logged_in?(session)
      !!current_user(session)
    end

    def current_user(session)
      if session[:id] != nil
        User.find(session[:id])
      end
    end

    def current_tweet(id)
      Tweet.find(id)
    end  
  end

end
