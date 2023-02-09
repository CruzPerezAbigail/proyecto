json.set! :data do
  json.array! @maintenances do |maintenance|
    json.partial! 'maintenances/maintenance', maintenance: maintenance
    json.url  "
              #{link_to 'Show', maintenance }
              #{link_to 'Edit', edit_maintenance_path(maintenance)}
              #{link_to 'Destroy', maintenance, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end