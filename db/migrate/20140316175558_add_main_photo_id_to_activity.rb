class AddMainPhotoIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :main_photo_id, :integer
  end
end
