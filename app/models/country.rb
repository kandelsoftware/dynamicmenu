class Country < ApplicationRecord
	has_many :people
	has_many :states
end
