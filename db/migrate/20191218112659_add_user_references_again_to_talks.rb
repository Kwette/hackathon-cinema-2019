class AddUserReferencesAgainToTalks < ActiveRecord::Migration[5.2]
  def change
    add_reference :talks, :user, foreign_key: true
  end
end
