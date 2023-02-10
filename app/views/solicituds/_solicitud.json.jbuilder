json.extract! solicitud, :id, :zone_id, :fecha, :descripcion, :usuarios_id, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
