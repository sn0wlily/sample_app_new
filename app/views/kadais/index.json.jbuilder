json.array!(@kadais) do |kadai|
  json.extract! kadai, :id, :title, :description   
  json.start kadai.start_date   
  json.end kadai.end_date   
  json.url kadai_url(kadai, format: :html) 
end