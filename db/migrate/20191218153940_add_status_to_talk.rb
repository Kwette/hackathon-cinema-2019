class AddStatusToTalk < ActiveRecord::Migration[5.2]
  def change
    add_column :talks, :statut, :string, default: "pending"
  end
end
