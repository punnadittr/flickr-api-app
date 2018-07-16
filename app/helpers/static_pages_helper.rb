module StaticPagesHelper
  def search_by_id
    @photos_from_id = @flickr.photos.search(user_id: params[:user_id])
  end

  def search_by_tag
    @photos_from_tag = @flickr.photos.search(tags: params[:tag])
  end
end
