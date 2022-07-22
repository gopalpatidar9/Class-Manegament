json.extract! content, :id, :title, :description, :link, :file, :created_at, :updated_at
json.url content_url(content, format: :json)
