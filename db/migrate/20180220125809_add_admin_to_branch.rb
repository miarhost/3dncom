class AddAdminToBranch < ActiveRecord::Migration[5.1]
  def change
    add_reference :branches, :admin, foreign_key: true
  end
end
