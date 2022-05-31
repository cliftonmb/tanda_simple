class Shift < ApplicationRecord
  validates :start, presence: true
  validates :finish, presence: true
  validates :user_id, presence: true
end
