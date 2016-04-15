class RemoveUserIdFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :user_id, :string
  end
end
