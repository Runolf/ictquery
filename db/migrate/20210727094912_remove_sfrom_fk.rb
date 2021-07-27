class RemoveSfromFk < ActiveRecord::Migration[6.1]
  def change
    change_table :jobs do |t|
      t.rename :entreprises_id, :entreprise_id
    end 
  end
end
