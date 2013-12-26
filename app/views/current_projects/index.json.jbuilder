json.array!(@current_projects) do |current_project|
  json.extract! current_project, :id
  json.url current_project_url(current_project, format: :json)
end
