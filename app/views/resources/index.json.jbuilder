json.set! :data do
  json.array! @resources do |resource|
    json.partial! 'resources/resource', resource: resource
    json.url  "
              #{link_to 'Show', resource }
              #{link_to 'Edit', edit_resource_path(resource)}
              #{link_to 'Destroy', resource, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end