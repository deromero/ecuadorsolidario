class AddMainFieldsToPojects < ActiveRecord::Migration
  def change
    add_column :projects, :goal, :numeric
    add_column :projects, :expires_at, :timestamp
    add_column :projects, :name, :string
    add_column :projects, :visible, :boolean
    add_column :projects, :rejected, :boolean
    add_column :projects, :recommended, :boolean
    add_column :projects, :successful, :boolean
    add_column :projects, :finished, :boolean
    add_column :projects, :permalink, :string
    add_column :projects, :state, :string
    add_column :projects, :video_url, :string
    add_column :projects, :image_url, :string
  end
end
