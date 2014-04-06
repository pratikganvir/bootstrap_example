class Blog < ActiveRecord::Base
  paginates_per 4
  attr_accessible :body, :subtitle, :title, :main_image, :author
  has_attached_file :main_image
  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/
end
