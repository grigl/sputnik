# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  list_id    :integer
#  lead_text  :text
#  full_text  :text
#  features   :text
#  video      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Activity < ActiveRecord::Base
  belongs_to :list
  has_many :activity_photos
end
