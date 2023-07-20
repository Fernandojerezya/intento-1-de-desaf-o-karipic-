# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    @photos = Photo.all
  end
end

