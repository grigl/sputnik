class CreateTranslationsTableForActivityPhoto < ActiveRecord::Migration
  def self.up
    ActivityPhoto.create_translation_table!({
      :title => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    ActivityPhoto.drop_translation_table! :migrate_data => true
  end
end
