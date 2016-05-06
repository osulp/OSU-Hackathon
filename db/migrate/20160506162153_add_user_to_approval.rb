class AddUserToApproval < ActiveRecord::Migration
  def change
    add_reference :approvals, :user, index: true, foreign_key: true
  end
end
