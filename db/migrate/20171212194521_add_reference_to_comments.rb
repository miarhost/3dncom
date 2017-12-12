class AddReferenceToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :reference, :users
  end
end
