json.array! @creatures do |creature|
  json.extract! creature, :id, :name, :size, :monster_type, :rating
end