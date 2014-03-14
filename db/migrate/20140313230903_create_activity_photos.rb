class CreateActivityPhotos < ActiveRecord::Migration
  def change
    create_table :activity_photos do |t|
      t.text :title
      t.string :file

      t.timestamps
    end
  end
end
