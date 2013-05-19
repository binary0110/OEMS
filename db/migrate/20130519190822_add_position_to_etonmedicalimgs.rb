class AddPositionToEtonmedicalimgs < ActiveRecord::Migration
  def change
    add_column :etonmedicalimgs, :position, :integer, default: 0
  end
end
