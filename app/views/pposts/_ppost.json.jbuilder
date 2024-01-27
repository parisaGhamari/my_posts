json.extract! ppost, :id, :name, :title, :body, :created_at, :updated_at
json.url ppost_url(ppost, format: :json)
