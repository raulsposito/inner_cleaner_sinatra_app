class JobsController < ApplicationController
    # CRUD 

    # CREATE

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