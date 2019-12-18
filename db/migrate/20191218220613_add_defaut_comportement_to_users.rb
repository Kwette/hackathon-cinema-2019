class AddDefautComportementToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :name, :string, default: "", null: false
    change_column :users, :localisation, :string, default: "", null: false


  end
end
