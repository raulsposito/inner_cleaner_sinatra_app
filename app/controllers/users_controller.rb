class UsersController < ApplicationController 

    get '/signup' do
        erb :'/users/signup'
    end

    post '/users' do 
        @user = User.new(params)
        if @user.save
            session[:user_id] = @user.id 
            redirect "/users/#{@user.id}"
        else 
            redirect '/users/signup'
        end
    end


    get '/login' do 
        erb :'/users/login'
    end

    post '/login' do 
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect "/users/#{user.id}"
        else 
            redirect "/users/login"
        end

    end

    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        erb :'/users/show_user'
    end

    get '/logout' do 
        session.clear 
        redirect '/'
    end

end
