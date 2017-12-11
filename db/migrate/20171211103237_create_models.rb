class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :Article
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
