class User < ApplicationRecord
  has_many :favorites
  has_many :pets, through: :favorites
  validates :email, uniqueness: true
  has_secure_password
end
