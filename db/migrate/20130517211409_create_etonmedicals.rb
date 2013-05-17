class CreateEtonmedicals < ActiveRecord::Migration
  def change
    create_table :etonmedicals do |t|
      t.date :date
      t.string :venue
      t.string :title
      t.text :content
      t.integer :committee_id

      t.timestamps
    end
  end
end
