class RemoveAuthornameFromTopic < ActiveRecord::Migration[5.1]
  def change
    remove_column :topics, :author_name, :string
  end
end
