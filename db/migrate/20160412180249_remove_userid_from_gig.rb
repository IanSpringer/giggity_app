class RemoveUseridFromGig < ActiveRecord::Migration
  def change
    remove_column :gigs, :user_id
  end
end
