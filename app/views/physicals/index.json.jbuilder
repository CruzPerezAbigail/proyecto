json.set! :data do
  json.array! @physicals do |physical|
    json.partial! 'physicals/physical', physical: physical
    json.url  "
              #{link_to 'Show', physical }
              #{link_to 'Edit', edit_physical_path(physical)}
              #{link_to 'Destroy', physical, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end