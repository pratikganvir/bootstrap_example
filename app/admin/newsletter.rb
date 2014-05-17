ActiveAdmin.register Newsletter do
  form do |f|
    f.inputs do
      f.input :body, as: :html_editor
    end

    f.buttons
  end
end
