class ChangeBookerTalk < ActiveRecord::Migration[5.2]
  def change
    change_column :talks, :booker, :string, :default => ""
  end
end
