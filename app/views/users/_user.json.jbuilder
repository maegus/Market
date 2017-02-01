json.extract! user, :id, :email, :name, :avatar
json.url user_url(user, format: :json)
