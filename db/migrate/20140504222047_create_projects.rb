class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image
      t.timestamps
    end
    add_attachment :projects, :image
  end
end
