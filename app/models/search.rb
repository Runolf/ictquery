class Search < ActiveRecord::Base

    def search_jobs


        jobs = jobs.find(["name LIKE ?","‰#{keywords}"]) if keywords.present?

        return jobs
    end
    
end