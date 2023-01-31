json.extract! reporte, :id, :fecha, :observaciones, :tipo_problema, :id_mantenimiento_id
json.url reporte_url(reporte, format: :json)
