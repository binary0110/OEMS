class CreateEventitems < ActiveRecord::Migration
  def change
    create_table :eventitems do |t|
      t.date :date
      t.string :venue
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
