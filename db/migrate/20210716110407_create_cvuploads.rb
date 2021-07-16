class CreateCvuploads < ActiveRecord::Migration[6.1]
  def change
    create_table :cvuploads do |t|
      t.string :text

      t.timestamps
    end
  end
end
