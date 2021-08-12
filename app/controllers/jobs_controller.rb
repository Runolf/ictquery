class JobsController < ApplicationController
    protect_from_forgery with: :null_session #avoid the need to have a token
    before_action 
    def index
       # @jobs = Job.all 
       cookies[:message_exists] = false

       @q = Job.ransack(params[:q])
       @jobs = @q.result
       .joins(:entreprise)
       .joins(:adresse)
       .joins(:experience)
       .joins(:contracttype)

       @countJob = @jobs.size

       @entreprises = Entreprise.all
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
        
        alreadyApplied = Jobapplied.where(
            job_id: job.id, 
            user_id: user.id
        )

        if alreadyApplied.exists? 
            cookies[:message_exists] = true
        else
            #puts job.name
            #puts user.username
            jobapplied = Jobapplied.create(
                dateAdded: DateTime.now, 
                job_id: job.id, 
                user_id: user.id)
            #puts jobapplied.job_id
            #jobapplied.save 
        end
    end 

    def likeCompany
        company = Job.find(params[:id]).entreprise
        user = current_user
        alreadyLiked = Favouriteentreprise.where(
            user_id: user.id,
            entreprise_id: company.id
        )
        if alreadyLiked.exists?
            cookies[:message_exists] = true 
            redirect_back(fallback_location: root_path)
        else
            likedCompany = Favouriteentreprise.new(
                dateAdded: DateTime.now,  
                user_id: user.id,
                entreprise_id: company.id
            )
            
           # likedCompany.save
        end 
    end

end