class RemoveAllSFromFk < ActiveRecord::Migration[6.1]
  def change
    change_table :entrepriseAdresses do |t|
      t.rename :entreprises_id, :entreprise_id
      t.rename :adresses_id, :adresse_id
    end 

    change_table :favouriteEntreprises do |t|
      t.rename :users_id, :user_id
      t.rename :entreprises_id, :entreprise_id
    end 

    change_table :favouriteJobs do |t|
      t.rename :jobs_id, :job_id
      t.rename :users_id, :user_id
    end

    change_table :jobApplieds do |t|
      t.rename :jobs_id, :job_id
      t.rename :users_id, :user_id
    end

    change_table :jobSectors do |t|
      t.rename :sectors_id, :sector_id
      t.rename :jobs_id, :job_id
    end

    change_table :jobs do |t|
      t.rename :adresses_id, :adresse_id
      t.rename :experiences_id, :experience_id
      t.rename :contractTypes_id, :contractType_id
    end 

    change_table :socialContacts do |t|
      t.rename :entreprises_id, :entreprise_id
    end

    change_table :users do |t|
      t.rename :adresses_id, :adresse_id
    end

  end
end
