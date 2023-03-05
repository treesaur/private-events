class EventAttendance < ApplicationRecord
  belongs_to :event_attendee_id, class_name: 'User'
  belongs_to :attended_event_id, class_name: 'Event'
end
