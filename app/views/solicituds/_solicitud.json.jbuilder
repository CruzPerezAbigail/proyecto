json.extract! solicitud, :id, :area_solicitante, :fecha, :descripcion, :rfc_id, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
