ActiveAdmin.register Image do
 
  #indexページ
    index do
      selectable_column
      id_column
      column :image do |b|
        image_tag(b.image.url(:thumb))
      end
      column :product_id
      column :created_at
      column :updated_at
      actions
    end
   
    #showページ
    show do |image|
      attributes_table do
        row :image do |b|
          image_tag(b.image.url(:thumb))
        end
        row :created_at
        row :updated_at
      end
    end
   
    permit_params :image, :product_id
  end