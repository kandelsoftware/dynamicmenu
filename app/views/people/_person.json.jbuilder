json.extract! person, :id, :name, :country_id, :state_id, :created_at, :updated_at
json.url person_url(person, format: :json)