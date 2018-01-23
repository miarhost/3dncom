class AddBranchReferenceToTopic < ActiveRecord::Migration[5.1]
  def change
    add_reference :topics, :branch, foreign_key: true
  end
end
