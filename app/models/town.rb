class Town < ApplicationRecord
  belongs_to :state
  has_many :people
end
