class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.date :dob
      t.text :bio
      t.string :location
      t.string :website
      t.string :musical_dreamteam
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
