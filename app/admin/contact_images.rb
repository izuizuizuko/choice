ActiveAdmin.register ContactImage do
  index do
    selectable_column
    id_column
    column :image do |b|
      image_tag(b.image.url(:thumb))
    end
    column :product_id
    column :title
    column :comoany
    column :rank
    column :point
    column :product_id
    column :contact_id
    column :updated_at
    actions
  end

  show do |item_image|
    attributes_table do
      row :image do |b|
        image_tag(b.image.url(:thumb))
      end
      row :created_at
      row :title
      row :updated_at
      row :product_id

    end
  end
 
  permit_params :image, :contact_id
end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :image, :contact_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:image, :contact_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  

