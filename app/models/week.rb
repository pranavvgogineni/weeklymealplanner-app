class Week < ApplicationRecord
  has_many :weeklymeals 
  has_many :recipes, through: :weeklymeals
end
