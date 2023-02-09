json.set! :data do
  json.array! @licences do |licence|
    json.partial! 'licences/licence', licence: licence
    json.url  "
              #{link_to 'Show', licence }
              #{link_to 'Edit', edit_licence_path(licence)}
              #{link_to 'Destroy', licence, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end