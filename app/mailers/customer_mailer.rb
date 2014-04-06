class CustomerMailer < ActionMailer::Base
  default from: "admin@bussiness.com"

  def thanks(customer)
  	@customer = customer
  	mail(to: customer.email, subject: "Thanks for contacting us")
  end
end
