json.set! :data do
  json.array! @tools do |tool|
    json.partial! 'tools/tool', tool: tool
    json.url  "
              #{link_to 'Show', tool }
              #{link_to 'Edit', edit_tool_path(tool)}
              #{link_to 'Destroy', tool, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end