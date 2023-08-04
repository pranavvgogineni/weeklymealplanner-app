class Recipe < ApplicationRecord
  has_many :weeklymeals
  has_many :weeks, through: :weeklymeals
end
