class AddPriorityToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :priority, :integer
  end
end
