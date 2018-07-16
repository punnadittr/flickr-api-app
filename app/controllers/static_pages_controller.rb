class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def index
    FlickRaw.api_key = ENV['FLICKRAW_API_KEY']
    FlickRaw.shared_secret = ENV['FLICKRAW_SHARED_SECRET']
    @flickr = FlickRaw::Flickr.new
    unless params[:user_id].nil?
      search
    end
    #@base_url = "https://farm#{farm-id}.staticflickr.com/#{server-id}/#{id}_#{secret}.jpg"
  end
end
