class AdMainImageToBlog < ActiveRecord::Migration
  def self.up
   add_column :blogs, :main_image, :string
  end

  def self.down
  end
end
