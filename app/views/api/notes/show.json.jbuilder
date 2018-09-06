
json.data do
  json.type "notes"
  json.id @note.id
  json.attributes do
    json.creature_id @note.creature_id
    json.body @note.body
  end
  json.relationships do
    json.creature do
      json.data do
        json.id @creature.id
        json.name @creature.name
        json.size @creature.size
        json.monster_type @creature.monster_type
        json.rating @creature.rating
      end
      json.links do
          json.self api_creature_path(@creature)
      end
    end
  end
  json.links do
    json.self api_creature_note_path(@creature, @note)
    json.list api_creature_notes_path
    json.update do
      json.method "PUT"
      json.href api_creature_note_path(@creature, @note)
    end
    json.delete do
      json.method "DELETE"
      json.href api_creature_note_path(@creature, @note)
    end
  end
end
