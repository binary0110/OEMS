class AddCommitteeIdToNewsitems < ActiveRecord::Migration
  def change
    add_column :newsitems, :committee_id, :integer
  end
end
