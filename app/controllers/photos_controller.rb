class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  def show
    @show_photo = Photo.find_by({:id =>params["id"]})
  end
  def new_form
  end
  def create_row
    z = Photo.new
    z.source = params["the_source"]
    z.caption = params["the_caption"]
    z.save
    redirect_to("http://localhost:3000/photos")
  end
  def destroy
    z = Photo.find_by({:id =>params["id"]})
    z.destroy
    redirect_to("http://localhost:3000/photos")
  end
  def edit_form
    @photo = Photo.find_by({:id =>params["id"]})
    @idupdate = params["id"]
  end
  def update_row
    z = Photo.find_by({:id =>params["id"]})
    z.source = params["the_source"]
    z.caption = params["the_caption"]
    z.save
    redirect_to("http://localhost:3000/photos/")
  end



end
