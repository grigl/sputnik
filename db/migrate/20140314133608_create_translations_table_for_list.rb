class CreateTranslationsTableForList < ActiveRecord::Migration
  def self.up
    List.create_translation_table!({
      :title => :string,
      :lead_text => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    List.drop_translation_table! :migrate_data => true
  end
end
