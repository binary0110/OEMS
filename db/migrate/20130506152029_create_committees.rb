class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :title
      t.string :firstname
      t.string :surname
      t.string :position

      t.timestamps
    end
  end
end
