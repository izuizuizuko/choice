class ImagesController < ApplicationController
  
  def create
    @image = Image.new(image_params)
  end
  def index
    @image = Image.all
  end
  def destroy
    @image = Image.find(params[:id])
    @image.destroy!
end
