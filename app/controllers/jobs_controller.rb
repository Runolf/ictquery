class JobsController < ApplicationController
    protect_from_forgery with: :null_session #avoid the need to have a token
    def index
        #airlines = Airline.all 
        #render json: AirlineSerializer.new(airlines, options).serialized_json
        @jobs = Job.all 
    end

    def show
        #airline  = Airline.find_by(slug: params[:slug])
        #render json: AirlineSerializer.new(airline, options).serialized_json
        @job = Post.find(1)
    end

    def create
        #airline = Airline.new(airline_params)
        #if airline.save
        #    render json: AirlineSerializer.new(airline).serialized_json
        #else
        #   render json: {error: airline.errors.messages }, status: 422
        #end            
        
        job = Job.create(name: 'test Name', expectations: 'expec test', description: 'desc test')

     
    end

    def update
        job = Job.find(1)
        job.update(name: 'name upadted for id 1')
    end

    def destroy
        job = Job.find(1)
        job.destroy
    end
end