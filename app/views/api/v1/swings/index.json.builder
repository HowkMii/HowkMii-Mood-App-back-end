json.swings @swings.each do |swing|
    json.id swing.id
    json.name swing.name
    json.image_url url_for(swing.image)
  end