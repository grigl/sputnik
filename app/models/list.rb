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
  attr_accessor :activities_params
  
  has_and_belongs_to_many :activities

  attr_accessible :title, :lead_text, :photo, :translations_attributes, :activities_params
  is_uploadcare_file :photo

  translates :title, :lead_text
  accepts_nested_attributes_for :translations
end
