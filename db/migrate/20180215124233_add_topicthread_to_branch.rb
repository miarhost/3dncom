class AddTopicthreadToBranch < ActiveRecord::Migration[5.1]
  def change
    add_reference :branches, :topicthread, foreign_key: true
  end
end
