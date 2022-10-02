json.extract! product, :id, :name, :colors, :price, :stock, :sizes, :id, :created_at, :updated_at
json.url product_url(product, format: :json)
