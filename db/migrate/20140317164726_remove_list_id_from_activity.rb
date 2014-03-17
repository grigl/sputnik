class RemoveListIdFromActivity < ActiveRecord::Migration
  def change
    remove_column :activities, :list_id
  end
end
