json.set! :data do
  json.array! @shapes do |shape|
    json.partial! 'shapes/shape', shape: shape
    json.url  "
              #{link_to 'Show', shape }
              #{link_to 'Edit', edit_shape_path(shape)}
              #{link_to 'Destroy', shape, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end