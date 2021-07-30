class RenameTableUpperToLowerCase < ActiveRecord::Migration[6.1]
  def change
    rename_table :contractTypes, :contracttypes
    rename_table :entrepriseAdresses, :entrepriseadresses
    rename_table :favouriteEntreprises, :favouriteentreprises
    rename_table :favouriteJobs, :favouritejobs
    rename_table :jobApplieds, :jobapplieds
    rename_table :jobSectors, :jobsectors
    rename_table :socialContacts, :socialcontacts
  end
end
