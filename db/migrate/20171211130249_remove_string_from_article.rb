class RemoveStringFromArticle < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :string, :string
  end
end
