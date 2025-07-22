json.extract! lead, :id, :name, :email, :phone, :company, :status, :created_at, :updated_at
json.url lead_url(lead, format: :json)
