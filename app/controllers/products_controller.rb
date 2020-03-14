class ProductsController < InheritedResources::Base


  private

    def product_params
      params.require(:product).permit(:name, :company, :rank, :point, :body, product_images_attributes: [:id,:image] )
    end

end
