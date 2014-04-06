class PageView < ActiveRecord::Base
  attr_accessible :ip_address, :referrer, :remote_agent, :session
end
