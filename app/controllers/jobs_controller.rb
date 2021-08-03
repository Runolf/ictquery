class JobsController < ApplicationController
    protect_from_forgery with: :null_session #avoid the need to have a token
    def index
       # @jobs = Job.all 

       @q = Job.ransack(params[:q])
       @jobs = @q.result
       .joins(:entreprise)
       .joins(:adresse)
       .joins(:experience)
       .joins(:contracttype)

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
        @contractType = Contracttype.find(@job.contracttype_id) 

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

    def apply
        job = Job.find(params[:id])
        user = current_user

        jobappied = Jobapplied.create(date, job.id, user.id)
        jobappied.save
    end 
end