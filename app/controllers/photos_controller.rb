# app/controllers/photos_controller.rb
class PhotosController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @photos = Photo.all
  end

  def new
    @photo = current_user.photos.build
  end

  def create
    @photo = current_user.photos.build(photo_params)
    if @photo.save
      redirect_to photos_path, notice: 'Foto subida exitosamente.'
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :image)
  end
end

