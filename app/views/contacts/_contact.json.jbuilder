json.extract! contact, :id, :name, :company, :rank, :point, :created_at, :updated_at
json.url contact_url(contact, format: :json)
