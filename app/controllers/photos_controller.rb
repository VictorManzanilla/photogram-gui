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

  def create
    @the_photo = Photo.new

    @the_photo.image = params.fetch("input_image")
    @the_photo.caption = params.fetch("input_caption")
    @the_photo.owner_id = params.fetch("input_owner_id")

    @the_photo.save

    redirect_to("/photos/#{@the_photo.id}")

  end

  def destroy
    the_id = params.fetch("an_id")
    photo_destroy = Photo.find(the_id)

    photo_destroy.destroy

    redirect_to("/photos")

  end

end
