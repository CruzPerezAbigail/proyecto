json.set! :data do
  json.array! @zones do |zone|
    json.partial! 'zones/zone', zone: zone
    json.url  "
              #{link_to 'Show', zone }
              #{link_to 'Edit', edit_zone_path(zone)}
              #{link_to 'Destroy', zone, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end