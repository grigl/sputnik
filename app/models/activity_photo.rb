# == Schema Information
#
# Table name: activity_photos
#
#  id         :integer          not null, primary key
#  file       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#

class ActivityPhoto < ActiveRecord::Base
  belongs_to :activity

  attr_accessible :title, :file
  is_uploadcare_file :file
end
