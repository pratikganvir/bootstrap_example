ActiveAdmin.register NewsletterSubscriber do
  form do |f|
    f.inputs do
      f.input :email
    end

    f.buttons
  end
end
