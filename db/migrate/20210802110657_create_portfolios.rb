class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :image
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :email
      t.string :telephone
      t.text :about
      t.string :strength
      t.string :skill
      t.string :link
      t.string :linkdescription
      t.string :project
      t.string :title
      t.string :description
      t.string :projectimage
      t.string :projectvideo

      t.timestamps
    end
  end
end
