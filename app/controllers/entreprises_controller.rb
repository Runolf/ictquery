class EntreprisesController < ApplicationController
    def index
        @entreprises = Entreprise.all.includes(:jobs)
    end
    def show

    end
    def update
  
    end
  end
  