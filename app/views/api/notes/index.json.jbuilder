json.array! @notes do |note|
  json.data note, :id, :creature_id, :body
  json.links do
    json.self api_creature_note_path(note.creature, note)
  end
end