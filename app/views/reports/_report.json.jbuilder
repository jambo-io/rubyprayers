json.extract! report, :id, :name, :start_at, :end_at, :created_at, :updated_at
json.url report_url(report, format: :json)
