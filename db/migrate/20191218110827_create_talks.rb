class CreateTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :talks do |t|
      t.string :film
      t.string :theme
      t.string :date

      t.timestamps
    end
  end
end
