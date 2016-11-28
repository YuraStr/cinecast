class AddVideoToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :video_url, :string
  end
end
