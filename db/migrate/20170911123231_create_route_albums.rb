class CreateRouteAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :route_albums do |t|
      t.integer :route_id
      t.integer :route_picture_id
      t.integer :user_id

      t.timestamps
    end
  end
end
