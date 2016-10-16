class State < ApplicationRecord
  belongs_to :country
  has_many :people
  has_many :towns
end
