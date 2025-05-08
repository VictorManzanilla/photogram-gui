class PhotosController < ApplicationController

  def index
    @all_photos = Photo.all
    render({:template => "photo_templates/index"})

  end

end
