class CreatePersonallinks < ActiveRecord::Migration[6.1]
  def change
    create_table :personallinks do |t|
      t.string :link
      t.string :linkdescription

      t.timestamps
    end
  end
end
