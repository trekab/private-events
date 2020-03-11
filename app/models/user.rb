class User < ApplicationRecord
  has_many :events
  has_many :event_attendees
  has_many :attended_event, class_name: "Event", through: :event_attendees
  has_secure_password

  def upcoming_events
    self.attended_event.where("date > ?", Time.now)
  end

  def previous_events
    self.attended_event.where("date < ?", Time.now)
  end
end
