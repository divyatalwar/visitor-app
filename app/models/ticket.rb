class Ticket < ActiveRecord::Base
	validates_presence_of :user_id, :event_id
	validates_uniqueness_of :unique_identifier
  before_create :set_identifier

  private

  def set_identifier
    begin
      inv = ('A'..'Z').to_a.sample(4).join + (0..9).to_a.sample(4).join
    end while not Ticket.find_by(unique_identifier: inv).nil?
    self.unique_identifier = inv
  end
end
