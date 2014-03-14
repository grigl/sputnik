class ChangeActivityPhotoTitleFieldType < ActiveRecord::Migration
  def change
    remove_column :activity_photos, :title
    add_column :activity_photos, :title, :string
  end
end
