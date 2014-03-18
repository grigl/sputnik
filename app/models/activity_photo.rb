# == Schema Information
#
# Table name: activity_photos
#
#  id          :integer          not null, primary key
#  file        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string(255)
#  activity_id :integer
#  is_main     :boolean
#

class ActivityPhoto < ActiveRecord::Base
  belongs_to :activity

  attr_accessible :title, :file, :activity_id, :is_main
  is_uploadcare_file :file

  translates :title
end
