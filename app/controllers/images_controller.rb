class ImagesController < ApplicationController
  
  def create
    @image = Image.new
  end
  def index
    @image = Image.all
  end

  def show_image
    @image = Image.find(params[:id])
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy!
  end
end
