# == Schema Information
#
# Table name: activities
#
#  id            :integer          not null, primary key
#  list_id       :integer
#  lead_text     :text
#  full_text     :text
#  features      :text
#  video         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  title         :string(255)
#  main_photo_id :integer
#

class Activity < ActiveRecord::Base
  belongs_to :list
  has_many :activity_photos

  attr_accessible :lead_text, :full_text, :features, :video, :list_id, :title

  translates :lead_text, :full_text, :features, :title

  def main_photo
    if self.activity_photos
      if self.main_photo_id
        self.activity_photos.where(id: self.main_photo_id).first
      else
        self.activity_photos.first
      end
    else
      nil
    end
  end
end
