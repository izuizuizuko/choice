json.extract! product, :id, :name, :company, :class, :point, :body, :created_at, :updated_at
json.url product_url(product, format: :json)
