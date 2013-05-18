class CreateEventitemimgs < ActiveRecord::Migration
  def change
    create_table :eventitemimgs do |t|
      t.string :caption
      t.string :imglink
      t.string :thumblink
      t.integer :eventitem_id

      t.timestamps
    end
  end
end
