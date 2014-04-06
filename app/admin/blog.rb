ActiveAdmin.register Blog do
  form do |f|
    f.inputs do
      f.input :title
      f.input :subtitle
      f.input :author
      f.input :body, as: :html_editor
      f.input :main_image, :as => :file, :required => false
    end

    f.buttons
  end
end
