ActiveAdmin.register Project do
  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
      f.input :category, :as => :select, :collection => [["ROR","ROR"],[".NET",".NET"],["IOS","IOS"],["Android","Android"]]
    end
    f.inputs do
      f.has_many :project_images, :allow_destroy => true do |pi|
        pi.input :image, :as => :file, :required => true
       end
    end
    f.buttons
  end
end
