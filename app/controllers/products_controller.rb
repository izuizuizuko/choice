class ProductsController < InheritedResources::Base
  
  @@product_id = nil

  def new
    @product = Product.new
    @product.images.build
 
  end
  def index
    @@product_id = params[:productId]
    @product = Product.find_by(@products_id)
    @products = Product.all
    @image = Image.all
    # @product = Product.find_by(params[:id])
    @productimage = Image.find_by(@products_id)
   
  end
  

  def show  
    @product = Product.find(params[:id])

  end
   
    # @product =Image.find(@@product_id)
    

  def edit
    @product = Product.find(params[:id])

  end


  def update
    @product = Product.find(params[:id])
  end


  private

    def product_params

      params.require(:product).permit(:name, :company, :rank, :point, :body, images_attributes: [:id,:image] )
    end

end

