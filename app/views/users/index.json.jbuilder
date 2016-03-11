json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :hash_password, :salt
  json.url user_url(user, format: :json)
end
