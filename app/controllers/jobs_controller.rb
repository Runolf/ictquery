class JobsController < ApplicationController
    protect_from_forgery with: :null_session #avoid the need to have a token
    def index
        @jobs = Job.all 
        @entreprises = Entreprise.all

        

        idE = @jobs[0].entreprises_id
        @enter = Entreprise.find(idE)

        # 1: get all entreprises
        # 2: get the jobs by entreprises 


        
    end
    
    def show
        @job = Job.find(params[:id])
    end

    def create
        job = Job.create(name: 'test Name', expectations: 'expec test', description: 'desc test')
    end

    def update
        job = Job.find(params[:id])
        job.update(name: 'name upadted for id 1')
    end

    def destroy
        job = Job.find(params[:id])
        job.destroy
    end
end