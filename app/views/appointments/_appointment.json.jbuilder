json.extract! appointment, :id, :appointmentdate, :patience_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
