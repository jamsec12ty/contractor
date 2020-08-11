class User < ApplicationRecord
  has_and_belongs_to_many :venues
  has_and_belongs_to_many :incidents
  has_secure_password

  validates :name, length: { minimum: 2, maximum: 20 }

  validates :email, presence: true, uniqueness: true

  validates :password, length: { minimum: 6, maximum: 16}
end
