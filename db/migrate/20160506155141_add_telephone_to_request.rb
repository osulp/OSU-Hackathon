class AddTelephoneToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :telephone_number, :integer
  end
end
