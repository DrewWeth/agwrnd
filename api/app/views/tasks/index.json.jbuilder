json.array!(@tasks) do |task|
  json.extract! task, :id, :content, :completed, :user_id, :completed_at, :priority
  json.url task_url(task, format: :json)
end
