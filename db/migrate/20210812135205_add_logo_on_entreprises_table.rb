class AddLogoOnEntreprisesTable < ActiveRecord::Migration[6.1]
  def change
    change_table :entreprises do |t|
      t.column :logo, :text
    end 
  end
end
