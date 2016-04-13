class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :body
      t.string :receiver_id
      t.string :sender_id

      t.timestamps null: false
    end
  end
end
