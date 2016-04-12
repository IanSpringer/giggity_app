class ChangeTypeToGigType < ActiveRecord::Migration
  def change
    rename_column :gigs, :type, :gig_type
  end
end
