class AddDestinationToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :destination_city, :string
  end
end
