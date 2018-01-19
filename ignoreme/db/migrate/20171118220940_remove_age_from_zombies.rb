class RemoveAgeFromZombies < ActiveRecord::Migration[5.1]
  def change
    remove_column :zombies, :age, :integer
  end
end
