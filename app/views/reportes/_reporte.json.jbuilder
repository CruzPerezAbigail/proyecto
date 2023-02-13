json.extract! reporte, :id, :fecha, :observaciones, :tipo_problema, :maintenances_id
json.url reporte_url(reporte, format: :json)
