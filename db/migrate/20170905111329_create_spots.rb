class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :polyline
      t.string :image_url
      t.string :description
      t.float :rating
      t.boolean :showInfo, default: false

      t.timestamps
    end
  end
end
