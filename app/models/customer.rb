class Customer < ActiveRecord::Base
  attr_accessible :city, :comment, :country, :email, :name, :phone, :state, :subject
end
