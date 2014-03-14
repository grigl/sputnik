class AddPhotoToList < ActiveRecord::Migration
  def change
    add_column :lists, :photo, :string
  end
end
