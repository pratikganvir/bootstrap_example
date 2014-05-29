class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :message
      t.string :client_name

      t.timestamps
    end
  end
end
