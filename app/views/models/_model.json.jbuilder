json.extract! model, :id, :Article, :title, :body, :created_at, :updated_at
json.url model_url(model, format: :json)
