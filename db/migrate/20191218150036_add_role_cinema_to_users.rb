class AddRoleCinemaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ccinema, :boolean
  end
end
