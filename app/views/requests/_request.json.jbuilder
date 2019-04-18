json.extract! request, :id, :name, :email, :request, :created_at, :updated_at
json.url request_url(request, format: :json)
