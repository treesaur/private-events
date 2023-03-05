class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  
  has_many :attendees, through: :event_attendances, source: :event_attendee
  has_many :event_attendances, foreign_key: :attended_event_id
end
