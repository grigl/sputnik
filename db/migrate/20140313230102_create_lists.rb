class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.text :lead_text

      t.timestamps
    end
  end
end
