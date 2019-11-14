json.extract! infra_project, :id, :title, :status, :start_date, :end_date, :desc, :created_at, :updated_at
json.url infra_project_url(infra_project, format: :json)
