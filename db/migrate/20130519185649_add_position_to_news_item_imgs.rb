class AddPositionToNewsItemImgs < ActiveRecord::Migration
  def change
    add_column :newsitemimgs, :position, :integer, default: 0
  end
end
