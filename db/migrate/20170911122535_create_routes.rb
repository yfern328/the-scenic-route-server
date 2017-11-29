class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :polyline
      t.string :description
      t.string :image_url
      t.float :rating

      t.timestamps
    end
  end
end
