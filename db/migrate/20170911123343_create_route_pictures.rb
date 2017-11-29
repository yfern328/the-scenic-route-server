class CreateRoutePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :route_pictures do |t|
      t.string :name
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
