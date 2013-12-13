class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :client_id
      t.string :video_url
      t.float :view_value
      t.float :buy_value
      t.integer :paid_views_left

      t.timestamps
    end
  end
end
