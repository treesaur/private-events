class CreateEventAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendances do |t|
      t.references :event_attendee_id, null: false, foreign_key: true
      t.references :attended_event_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
