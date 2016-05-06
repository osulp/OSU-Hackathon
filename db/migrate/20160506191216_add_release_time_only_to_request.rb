class AddReleaseTimeOnlyToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :release_time_only, :boolean
  end
end
