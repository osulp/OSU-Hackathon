class AddDatesToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :dates, :datetime
  end
end
