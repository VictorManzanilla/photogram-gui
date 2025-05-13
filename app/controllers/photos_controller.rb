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

  def update
    the_id = params.fetch("an_id")
    photo_details = Photo.find(the_id)

    photo_details.image = params.fetch("input_image")
    photo_details.caption = params.fetch("input_caption")

    photo_details.save

    redirect_to("/photos/#{photo_details.id}")

  end

  def create_comment
    the_comment = Comment.new

    the_comment.photo_id = params.fetch("input_photo_id")
    the_comment.author_id = params.fetch("input_author_id")
    the_comment.body = params.fetch("input_comment")

    the_comment.save

    redirect_to("/photos/#{the_comment.photo_id}")

  end

  def destroy
    the_id = params.fetch("an_id")
    photo_destroy = Photo.find(the_id)

    photo_destroy.destroy

    redirect_to("/photos")

  end

end
