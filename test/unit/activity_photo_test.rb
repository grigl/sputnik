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
#

require 'test_helper'

class ActivityPhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
