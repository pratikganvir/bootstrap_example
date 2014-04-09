ActiveAdmin.register Job do
  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
    end

    f.buttons
  end
end
