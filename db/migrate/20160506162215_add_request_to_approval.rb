class AddRequestToApproval < ActiveRecord::Migration
  def change
    add_reference :approvals, :request, index: true, foreign_key: true
  end
end
