json.extract! product, :id, :image, :title, :price, :descritpion, :created_at, :updated_at
json.url product_url(product, format: :json)