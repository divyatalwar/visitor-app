class Visitor < ActiveRecord::Base

  belongs_to :ticket
  enum event_type: [:entry, :exit]
  validates_presence_of :event_type, :ticket_id, :timestamp

end
