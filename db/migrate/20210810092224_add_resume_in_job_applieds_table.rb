class AddResumeInJobAppliedsTable < ActiveRecord::Migration[6.1]
  def change
    change_table :jobapplieds do |t|
      t.column :cvuser, :text
    end 
  end
end
