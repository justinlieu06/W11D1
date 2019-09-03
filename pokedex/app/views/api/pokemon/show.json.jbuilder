json.pokemon do 
  json.extract! @pokemon, :id, :name, :attack, :defense, :moves, :image_url, :item_ids
end

json.items do