module StaticPagesHelper
  def search
    @photos = flickr.photos.search(user_id: params[:user_id])
  end
end
