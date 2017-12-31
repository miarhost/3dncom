class AddAuthorColumnToTopic < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :author_name, :string
  end
end
