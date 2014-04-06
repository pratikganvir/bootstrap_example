class Blog < ActiveRecord::Base
  attr_accessible :body, :subtitle, :title, :main_image, :author
  has_attached_file :main_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/
end
