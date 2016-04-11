class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.integer :user_id
      t.string :body
      t.timestamp :time

      t.timestamps null: false
    end
  end
end
