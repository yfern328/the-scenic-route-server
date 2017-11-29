class CreateUserRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_routes do |t|
      t.integer :user_id
      t.integer :route_id

      t.timestamps
    end
  end
end
