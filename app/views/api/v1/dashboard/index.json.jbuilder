json.recent_moodgalleries  @recent_moodgalleries .each do |moodgallery|
    json.id moodgallery.id
    json.title moodgallery.title
    json.mooder_name moodgallery.mooder.name
    json.cover_url url_for(moodgallery.cover)
  end
  
  json.recommend_moodgalleries  @recommend_moodgalleries .each do |moodgallery|
    json.id moodgallery.id
    json.title moodgallery.title
    json.mooder_name moodgallery.mooder.name
    json.cover_url url_for(moodgallery.cover)
  end