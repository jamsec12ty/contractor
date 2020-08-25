class Incident < ApplicationRecord
  belongs_to :venue, optional: true
  belongs_to :guard, class_name: "User", optional: true

  validates :date, presence: true
  validates :location, presence: true
  validates :incident_type, presence: true
  validates :incident_details, presence: true
  validates :poi_details, presence: true
  validates :witness_details, presence: true
  validates :reported_to, presence: true
  validates :reported_by, presence: true
  validates :follow_up_actions, presence: true

  def can_edit_all?
    (Time.now - self.created_at) < 1.hour
  end

  def can_edit_followup?
    (Time.now - self.created_at) < 6.hours
  end



end
