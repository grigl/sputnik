class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :list_id
      t.text :lead_text
      t.text :full_text
      t.text :features
      t.string :video

      t.timestamps
    end
  end
end
