class DropEventAttendances < ActiveRecord::Migration[7.0]
  def change
    drop_table :event_attendances
  end
end
