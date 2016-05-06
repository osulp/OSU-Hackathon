class AddInvolvementToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :involvement, :string
  end
end
