class Newsletter < ActiveRecord::Base
  attr_accessible :body, :send_to
end
