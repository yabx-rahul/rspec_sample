json.extract! article, :id, :title, :description, :status, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)
