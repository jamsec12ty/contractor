class Venue < ApplicationRecord
  has_and_belongs_to_many :guards, class_name: "User"
  has_many :incidents
end
