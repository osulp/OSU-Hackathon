class AddConferenceToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :conference, :string
  end
end
