class CreateNewsitemimgs < ActiveRecord::Migration
  def change
    create_table :newsitemimgs do |t|
      t.string :caption
      t.string :imglink
      t.string :thumblink
      t.integer :newsitem_id

      t.timestamps
    end
  end
end
