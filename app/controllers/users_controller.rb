class UsersController < ApplicationController 

    get '/signup' do
        erb :'/users/signup'
    end

    post '/users' do 
        @user = User.new(params)
        if @user.save 
            session[:user_id] = @user.id
            flash[:message] = "Hi #{@user.name}, Welcome to Inner Cleaner!"
            redirect "/users/#{@user.id}"
        else 
            flash[:error] = "We were not able to create a User for you. Please try again!"
            redirect '/signup'
        end
    end
    
    get '/login' do 
        erb :'/users/login'
    end

    post '/login' do 
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            flash[:message] = "Welcome #{@user.name}!"
            redirect "/users/#{@user.id}"
        else 
            flash[:error] = "Invalid credentials. Please try again!"
            redirect '/login'
        end

    end

    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        erb :'/users/show_user'
    end

    get '/logout' do 
        session.clear 
        flash[:message] = "Thank you for keeping the house clean!"
        redirect '/'
    end

end
