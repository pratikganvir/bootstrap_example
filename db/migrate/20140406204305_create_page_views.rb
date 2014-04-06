class CreatePageViews < ActiveRecord::Migration
  def change
    create_table :page_views do |t|
      t.string :referrer
      t.string :session
      t.string :ip_address
      t.string :remote_agent

      t.timestamps
    end
  end
end
