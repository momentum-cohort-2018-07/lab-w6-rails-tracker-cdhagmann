json.array! @notes do |note|
  json.extract! note, :id, :creature_id, :body
end