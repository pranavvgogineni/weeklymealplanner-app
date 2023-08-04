class Weeklymeal < ApplicationRecord
  belongs_to :recipe
  belongs_to :week
end
