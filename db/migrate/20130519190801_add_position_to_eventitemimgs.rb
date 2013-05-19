class AddPositionToEventitemimgs < ActiveRecord::Migration
  def change
    add_column :eventitemimgs, :position, :integer, default: 0
  end
end
