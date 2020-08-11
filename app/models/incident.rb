class Incident < ApplicationRecord
  belongs_to :venue, optional: true
  belongs_to :guard, class_name: "User", optional: true
end
