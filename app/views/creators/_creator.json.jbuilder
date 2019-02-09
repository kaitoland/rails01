json.extract! creator, :id, :name, :type, :url, :created_at, :updated_at
json.url creator_url(creator, format: :json)
