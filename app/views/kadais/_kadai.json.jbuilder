json.extract! kadai, :id, :name, :description, :start_date, :due, :created_at, :updated_at, :user_id
json.url kadai_url(kadai, format: :json)
