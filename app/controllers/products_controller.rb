class ProductsController < InheritedResources::Base
  
  @@product_id = nil

  # def create
  #   image = product_params[:image]
  #   @image = Image.new

    
  # end

  # def new
  #   @product = Product.new
  #   @product.images.build
 
  
  def index
    @products = Product.all
    @product = Product.find_by(@products_id)
    @images = Image.all
  
  #   @image = Inmage.find_by([params:image])
  #  # @product = Product.find_by([:id])
    @productimage = Image.find_by(@products_id)
   
  end
  

  def show  
    @product = Product.find(params[:id])
  end
  
    

  def edit
    @product = Product.find(params[:id])

  end


  def update
    @product = Product.find(params[:id])
  end


  private

    def product_params
      params.require(:product).permit(:name, :company, :rank, :point, :point, :pit1, :pit2, :pit3, :advice1, :avdice2, :advice3, :picture, product_images_attributes: [:id,:image] )
    end

end

