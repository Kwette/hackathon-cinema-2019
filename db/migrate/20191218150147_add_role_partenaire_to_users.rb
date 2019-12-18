class AddRolePartenaireToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :partenaire, :boolean
  end
end
