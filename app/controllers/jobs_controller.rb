class JobsController < ApplicationController
    protect_from_forgery with: :null_session #avoid the need to have a token
    def index
       # @jobs = Job.all 

       @q = Job.ransack(params[:q])
       @jobs = @q.result
       .joins("join entreprises on jobs.entreprises_id = entreprises.id")
       
      @qEnter = Entreprise.ransack(params[:qEnter])
      @entreprises = @qEnter.result    

    end

    def show
        @job = Job.find(params[:id])
        # entreprise
        @entreprise = Entreprise.find(@job.entreprises_id)
        # adresse
        # @adresse = Adress.find(@job.adresses_id)
        # experience
        #@experiences = Exprerience.find(@job.experiences_id)
        # contract type
        # @contractType = ContractType.find(@job.contractTypes_id) 

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