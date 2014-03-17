class CreateActivitiesListsJoinTable < ActiveRecord::Migration
  def change
    create_table :activities_lists, id: false do |t|
      t.integer :activity_id
      t.integer :list_id
    end
  end
end
