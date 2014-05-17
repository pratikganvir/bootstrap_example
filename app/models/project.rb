class Project < ActiveRecord::Base
  attr_accessible :description, :image, :title, :category, :project_images_attributes
  has_attached_file :image
  has_many :project_images
  accepts_nested_attributes_for :project_images
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
