class Job < ActiveRecord::Base	
    belongs_to :entreprise
    belongs_to :experience
    belongs_to :adresse
    belongs_to :contracttype


    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end    
end
