json.data do
  json.type "creatures"
  json.id @creature.id
  json.attributes do
    json.name @creature.name
    json.size @creature.size
    json.monster_type @creature.monster_type
    json.rating @creature.rating
  end
  json.relationships do
    json.notes do
      json.array! @creature.notes do |note|
        json.data note, :id, :body
        json.links do
          json.self api_creature_note_path(@creature, note)
        end
      end
    end
  end 
  json.links do
    json.self api_creature_path(@creature)
    json.list api_creatures_path
    json.update do
      json.method "PUT"
      json.href api_creature_path(@creature)
    end
    json.delete do
      json.method "DELETE"
      json.href api_creature_path(@creature)
    end
  end
end