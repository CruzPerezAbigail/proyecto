json.set! :data do
  json.array! @brands do |brand|
    json.partial! 'brands/brand', brand: brand
    json.url  "
              #{link_to 'Show', brand }
              #{link_to 'Edit', edit_brand_path(brand)}
              #{link_to 'Destroy', brand, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end