json.extract! kadai, :id, :title, :description, :start_date, :end_date, :created_at, :updated_at, :user_id
json.url kadai_url(kadai, format: :json)
