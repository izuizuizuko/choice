ActiveAdmin.register Kid do

  form do |f|
    f.inputs '商品' do
      f.input :name
      f.input :company
      f.input :rank
      f.input :point
      f.input :pit1
      f.input :pit2
      f.input :pit3
      f.input :advice1
      f.input :advice2
      f.input :advice3
      f.input :picture
      f.has_many :kid_images, allow_destroy: true,
                new_record: true do |t|
        t.input :image
      end
      f.actions
    end
  end



  permit_params :name, :company, :rank, :point, :pit1, :pit2, :pit3, :advice1, :advice2, :advice3, :picture, kid_images_attribut: [:id, :image, :reference, :_destroy]
  # params.require(:product).permit(:rank, :point, :body, :product_images_attribut: [:id, :image, :reference, :_destroy])
end
