json.extract! profile, :id, :profile_name, :email, :created_at, :updated_at
json.url profile_url(profile, format: :json)
