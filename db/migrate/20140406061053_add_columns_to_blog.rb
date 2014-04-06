class AddColumnsToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :author, :string
    add_attachment :blogs, :main_image
  end

  def self.down
    remove_attachment :blogs, :main_image
  end
end
