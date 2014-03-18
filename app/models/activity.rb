# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  lead_text  :text
#  full_text  :text
#  features   :text
#  video      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#

class Activity < ActiveRecord::Base
  attr_accessor :lists_params
  
  has_and_belongs_to_many :lists
  has_many :activity_photos

  accepts_nested_attributes_for :activity_photos, allow_destroy: true
  accepts_nested_attributes_for :lists

  attr_accessible :lead_text, :full_text, :features, :video, :list_id, :title, 
                  :activity_photos_attributes, :translations_attributes, :lists_params

  translates :lead_text, :full_text, :features, :title
  accepts_nested_attributes_for :translations

  def main_photo
    if self.activity_photos
      if self.activity_photos.where(is_main: true).present?
        self.activity_photos.where(is_main: true).first
      else
        self.activity_photos.first
      end
    else
      nil
    end
  end
end
