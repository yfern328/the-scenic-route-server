class CreateSpotAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :spot_albums do |t|
      t.integer :spot_id
      t.integer :spot_picture_id
      t.integer :user_id

      t.timestamps
    end
  end
end
