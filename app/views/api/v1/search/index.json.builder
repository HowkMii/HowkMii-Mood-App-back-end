json.moodts @moodts.each do |moodt|
    json.id moodt.id
    json.title moodt.title
    json.mooder_name moodt.moodgallery.artist.name
    json.file_url url_for(moodt.file)
    json.moodgallery_id moodt.moodgallery.id
    json.favorite current_user.is_favorite? 'Moodt', moodt.id
end

json.mooders @mooders.each do |mooder|
    json.id mooder.id
    json.name mooder.name
    json.photo_url url_for(mooder.photo)
end

json.moodgalleries @moodgalleries.each do |moodgallery|
    json.id moodgallery.id
    json.title moodgallery.title
    json.mooder_name moodgallery.artist.name
    json.cover_url url_for(moodgallery.cover)
end