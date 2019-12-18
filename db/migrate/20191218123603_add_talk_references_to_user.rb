class AddTalkReferencesToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :talk, foreign_key: true
  end
end
