json.extract! owner, :id, :email, :name, :avatar, :created_at, :updated_at
json.url owner_url(owner, format: :json)
