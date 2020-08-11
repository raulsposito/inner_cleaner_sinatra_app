require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_sessions"
  end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :welcome
    end
  end

  helpers do
    def current_user
      # keeps track of the logged in user
      User.find_by(id: session[:user_id])
    end

    def logged_in?
      # returns a boolean if the user is logged in or not
      !!current_user
    end

    def redirect_if_not_logged_in
      if !logged_in?
        flash[:errors] = "Please log in to proceed."
        redirect '/login'
      end
    end

    def authorized_user?(job)
      job.user_id == current_user.id
    end

    def find_job
      @job = Job.find(params[:id])
    end
  end
end