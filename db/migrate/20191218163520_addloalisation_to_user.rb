class AddloalisationToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :localisation, :string
  end
end
