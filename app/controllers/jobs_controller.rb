class JobsController < ApplicationController
    # CRUD 

    # CREATE

    get '/jobs/new' do 
        erb :"/jobs/new"
    end

    post '/jobs' do 
        job = Job.create(title: params[:title], image_url: params[:image_url], description: params[:description], user_id: current_user.id, created_at: params[:created_at])
        redirect "/jobs/#{job.id}"
    end

    # READ 
    get '/jobs' do 
        @jobs = Job.all 
        erb :'jobs/index'
    end

    get '/jobs/:id' do 
        @jobs = Job.find(params[:id])
        erb :"/jobs/show"
    end

    # UPDATE 

    # DELETE 

end