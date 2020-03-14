ActiveAdmin.register Product do
  form do |f|
    f.inputs '商品の内容' do
      f.input :name
      f.input :company
      f.input :rank
      f.input :point
      f.input :body
      f.input :image, :as => :file
      f.has_many :product_images, allow_destroy: true,
                new_record: true do |t|
        t.input :image
      end
      f.actions
    end
  

  permit_params :name, :company, :rank, :point, :body, product_images_attributes: [:id, :image, :reference, :_destroy]

end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :company, :rank, :point, :body
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :company, :rank, :point, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  end
  

