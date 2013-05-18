class AddCustomhtmlToNewsitems < ActiveRecord::Migration
  def change
    add_column :newsitems, :customhtml, :text
  end
end
