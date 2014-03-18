class RemoveMainPhotoIdFromActivity < ActiveRecord::Migration
  def change
    remove_column :activities, :main_photo_id 
  end
end
