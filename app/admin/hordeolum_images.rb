ActiveAdmin.register HordeolumImage do

  
  index do
    selectable_column
    id_column
    column :image do |b|
      image_tag(b.image.url(:thumb))
    end
    column :hordeolum_id
    column :product_id
    column :title
    column :comoany
    column :rank
    column :point
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

    end
  end
 
  permit_params :image, :hordeolum_id
end

