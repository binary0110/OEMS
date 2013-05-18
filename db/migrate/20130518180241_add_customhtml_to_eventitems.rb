class AddCustomhtmlToEventitems < ActiveRecord::Migration
  def change
    add_column :eventitems, :customhtml, :text
  end
end
