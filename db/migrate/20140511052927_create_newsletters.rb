class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.text :send_to
      t.text :body

      t.timestamps
    end
  end
end
