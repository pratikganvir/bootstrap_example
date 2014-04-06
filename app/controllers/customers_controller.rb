class CustomersController < InheritedResources::Base
	def create
	 customer = Customer.new(params["customer"])
	 CustomerMailer.thanks(customer).deliver
	 render :json => {:success => customer.save}
	end
end
