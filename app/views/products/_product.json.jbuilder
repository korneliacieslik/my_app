json.extract! product, :id, :description, :name, :created_at, :updated_at
json.url product_url(product, format: :json)
