json.set! :data do
  json.array! @departaments do |departament|
    json.partial! 'departaments/departament', departament: departament
    json.url  "
              #{link_to 'Show', departament }
              #{link_to 'Edit', edit_departament_path(departament)}
              #{link_to 'Destroy', departament, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end