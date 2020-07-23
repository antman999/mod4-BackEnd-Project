class User < ApplicationRecord
  has_many :favorites
  has_many :pets, through: :favorites
end
