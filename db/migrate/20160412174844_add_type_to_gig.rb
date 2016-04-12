class AddTypeToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :type, :string
  end
end
