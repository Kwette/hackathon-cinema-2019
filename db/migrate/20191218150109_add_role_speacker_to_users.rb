class AddRoleSpeackerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :speaker, :boolean
  end
end
