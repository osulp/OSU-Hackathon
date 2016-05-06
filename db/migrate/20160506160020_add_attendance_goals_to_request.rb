class AddAttendanceGoalsToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :attendance_goals, :text
  end
end
