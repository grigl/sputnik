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

class List < ActiveRecord::Base
  has_many :activities

  attr_accessible :title, :lead_text, :photo
  is_uploadcare_file :photo

  translates :title, :lead_text
end
