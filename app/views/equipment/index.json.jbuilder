json.set! :data do
  json.array! @equipment do |equipment|
    json.partial! 'equipment/equipment', equipment: equipment
    json.url  "
              #{link_to 'Show', equipment }
              #{link_to 'Edit', edit_equipment_path(equipment)}
              #{link_to 'Destroy', equipment, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end