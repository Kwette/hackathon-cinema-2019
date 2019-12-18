class AddRoleDistribToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :distrib, :boolean
  end
end
