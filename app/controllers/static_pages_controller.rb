class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def index
    FlickRaw.api_key = ENV['FLICKRAW_API_KEY']
    FlickRaw.shared_secret = ENV['FLICKRAW_SHARED_SECRET']
    @flickr = FlickRaw::Flickr.new
    if !params[:user_id].blank?
      search_by_id
    elsif !params[:tag].blank?
      search_by_tag
    end
  end
end
