class ProjectImage < ActiveRecord::Base
  attr_accessible :image, :project_id
  belongs_to :project
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
