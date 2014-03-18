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

require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
