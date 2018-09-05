
# json.id @cat.id
# json.name @cat.name
# json.breed @cat.breed
# json.registry @cat.registry

json.links do
  json.self api_creatures_path(@creature)
  json.list api_creatures_url
  json.update do
    json.method "PUT"
    json.href api_creatures_path(@creature)
  end
  json.delete do
    json.method "DELETE"
    json.href api_creatures_path(@creature)
  end
end
json.data do
  json.id @creature.id
  json.attributes do
    json.name @creature.name
    json.size @creature.size
    json.monster_type @creature.monster_type
    json.rating @creature.rating
  end
end