class AddCustomhtmlToEtonmedicals < ActiveRecord::Migration
  def change
    add_column :etonmedicals, :customhtml, :text
  end
end
