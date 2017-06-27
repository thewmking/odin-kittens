module FlickrHelper
  def user_photos(user_id, photo_count = 30)
    flickr.photos.search(user_id: user_id, per_page: photo_count)
  end

  def render_flickr_sidebar_widget(user_id, photo_count = 30)
    begin
      photos = user_photos(user_id, photo_count = 30)
      render :partial => '/static_pages/sidebar_widget',
             :locals => { photos: photos }
    end
  end
end
