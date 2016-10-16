class Person < ApplicationRecord
  belongs_to :country
  belongs_to :state
  belongs_to :town
end
