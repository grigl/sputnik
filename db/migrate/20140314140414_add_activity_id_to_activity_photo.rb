class AddActivityIdToActivityPhoto < ActiveRecord::Migration
  def change
    add_column :activity_photos, :activity_id, :integer
  end
end
