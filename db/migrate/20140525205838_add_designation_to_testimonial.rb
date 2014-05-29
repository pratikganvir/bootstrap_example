class AddDesignationToTestimonial < ActiveRecord::Migration
  def change
    add_column :testimonials, :designation, :string
  end
end
