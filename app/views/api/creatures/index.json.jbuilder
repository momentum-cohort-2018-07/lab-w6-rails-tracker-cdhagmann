json.array! @creatures do |creature|
  json.data creature, :id, :name, :size, :monster_type, :rating
  json.links do
      json.self api_creature_path(creature)
  end
end