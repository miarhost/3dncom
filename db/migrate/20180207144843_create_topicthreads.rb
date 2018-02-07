class CreateTopicthreads < ActiveRecord::Migration[5.1]
  def change
    create_table :topicthreads do |t|
      t.string :name

      t.timestamps
    end
  end
end
