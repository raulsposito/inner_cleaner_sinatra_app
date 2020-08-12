class JobsController < ApplicationController
    # CRUD 

    # CREATE

    get '/jobs/new' do 
        if logged_in?
            erb :"/jobs/new"
        else
            flash[:error] = "You must be logged in to create a Job!"
            redirect "/"
        end
        
    end

    post '/jobs' do
        job = Job.create(title: params[:title], image_url: params[:image_url], description: params[:description], user_id: current_user.id, created_at: params[:created_at])
        if job.save
            flash[:message] = "Job Created Successfully!"

            redirect to "/jobs/#{job.id}"
        else
            flash[:error] = "Sorry! Column(s): #{job.errors.full_messages.to_sentence}."
            redirect to "/jobs/new"
        end
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

    get '/jobs/:id/edit' do 
        @job = Job.find(params[:id])
        erb :'/jobs/edit'
    end

    patch '/jobs/:id' do 
        @job = Job.find(params[:id])
        @job.update(title: params[:title], image_url: params[:image_url], description: params[:description])
        redirect "/jobs/#{@job.id}"
    end
    

    # DELETE 

    delete '/jobs/:id' do 
        @job = Job.find(params[:id])
        @job.destroy 
        redirect '/jobs'
    end
end