json.array!(@examples) do |example|
  json.extract! example, :id, :title, :body, :comment, :Created_at
  json.url example_url(example, format: :json)
end
