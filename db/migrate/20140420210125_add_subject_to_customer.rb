class AddSubjectToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :subject, :string
  end
end
