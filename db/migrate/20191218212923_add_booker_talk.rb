class AddBookerTalk < ActiveRecord::Migration[5.2]
  def change
    add_column :talks, :booker, :integer
  end
end
