json.array!(@kadais) do |kadai|
  json.extract! kadai, :id, :title, :etc, :imp, :sinko
  json.start kadai.start_date   
  json.end kadai.due   
  json.url kadai_url(kadai, format: :html) 
end