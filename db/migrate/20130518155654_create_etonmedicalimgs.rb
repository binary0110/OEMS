class CreateEtonmedicalimgs < ActiveRecord::Migration
  def change
    create_table :etonmedicalimgs do |t|
      t.string :caption
      t.string :imglink
      t.string :thumblink
      t.integer :etonmedical_id

      t.timestamps
    end
  end
end
