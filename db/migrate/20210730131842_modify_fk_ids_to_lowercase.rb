class ModifyFkIdsToLowercase < ActiveRecord::Migration[6.1]
  def change
    change_table :jobs do |t|
      t.rename :contractType_id, :contracttype_id
    end 
  end
end
