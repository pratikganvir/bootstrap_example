ActiveAdmin.register Testimonial do
  form do |f|
    f.inputs do
      f.input :message
      f.input :client_name
      f.input :designation
    end

    f.buttons
  end
end
