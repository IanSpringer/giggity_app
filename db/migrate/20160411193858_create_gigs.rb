class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.timestamp :time

      t.timestamps null: false
    end
  end
end
