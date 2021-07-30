class JobsController < ApplicationController
    protect_from_forgery with: :null_session #avoid the need to have a token
    def index
       # @jobs = Job.all 

       @q = Job.ransack(params[:q])
       @jobs = @q.result
       .joins(:entreprise)
       .joins(:adresse)
       .joins(:experience)
       #the search on experience worked even without adding the joins here ...

    end

    def show
        @job = Job.find(params[:id])
        # entreprise
        @entreprise = Entreprise.find(@job.entreprise_id)
        # adresse
        @adresse = Adresse.find(@job.adresse_id)
        # experience
        @experiences = Experience.find(@job.experience_id)
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