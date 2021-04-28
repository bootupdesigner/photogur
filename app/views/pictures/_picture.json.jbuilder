json.extract! picture, :id, :title, :url, :description, :user_id, :created_at, :updated_at
json.url picture_url(picture, format: :json)
