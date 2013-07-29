json.array!(@weeks) do |week|
  json.extract! week, :employee_id, :reported_on, :report, :comment
  json.url week_url(week, format: :json)
end
