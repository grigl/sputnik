# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  lead_text  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string(255)
#

require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
