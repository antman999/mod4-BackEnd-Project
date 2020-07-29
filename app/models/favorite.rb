class Favorite < ApplicationRecord
  belongs_to :pet, required: false
  belongs_to :user, required: false
end
