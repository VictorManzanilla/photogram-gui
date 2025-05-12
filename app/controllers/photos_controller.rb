class PhotosController < ApplicationController

  def index
    @all_photos = Photo.all
    render({:template => "photo_templates/index"})

  end

  def show
    the_id = params.fetch("an_id")
    @the_photo = Photo.find(the_id)

    render({:template => "photo_templates/show"})
  end

end
