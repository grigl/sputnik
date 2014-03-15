class CreateActivityTranslationTable < ActiveRecord::Migration
  def self.up
    Activity.create_translation_table!({
      :title => :string,
      :lead_text => :text,
      :full_text => :text,
      :features => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Activity.drop_translation_table! :migrate_data => true
  end
end
