class AddCommitteeIdToEventitems < ActiveRecord::Migration
  def change
    add_column :eventitems, :committee_id, :integer
  end
end
