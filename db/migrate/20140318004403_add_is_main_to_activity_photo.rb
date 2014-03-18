class AddIsMainToActivityPhoto < ActiveRecord::Migration
  def change
    add_column :activity_photos, :is_main, :boolean
  end
end
