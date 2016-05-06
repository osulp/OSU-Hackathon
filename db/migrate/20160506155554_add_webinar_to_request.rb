class AddWebinarToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :webinar, :boolean
  end
end
