class ChangeCinemaToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :ccinema, :boolean, :default => false
  end
end
