json.extract! studentprofile, :id, :image, :created_at, :updated_at
json.url studentprofile_url(studentprofile, format: :json)
