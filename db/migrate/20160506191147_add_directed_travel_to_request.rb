class AddDirectedTravelToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :directed_travel, :boolean
  end
end
