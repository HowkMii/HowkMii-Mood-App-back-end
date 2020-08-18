json.title @moodgallery.title
json.cover_url url_for(@moodgallery.cover)
json.mooder_name @moodgallery.mooder.name

json.moodts @moodgallery.moodts.each do |moodt|
  json.id moodt.id
  json.title moodt.title
  json.file_url url_for(moodt.file)
  json.mooder_name @moodgallery.mooder.name
  json.moodgallery_id song.moodgallery.id
  json.favorite current_user.is_favorite? 'Moodt',moodt.id
end