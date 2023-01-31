json.set! :data do
  json.array! @reportes do |reporte|
    json.partial! 'reportes/reporte', reporte: reporte
    json.url  "
              #{link_to 'Show', reporte }
              #{link_to 'Edit', edit_reporte_path(reporte)}
              #{link_to 'Destroy', reporte, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end