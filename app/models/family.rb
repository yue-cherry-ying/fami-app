# == Schema Information
#
# Table name: families
#
#  id          :integer          not null, primary key
#  family_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Family < ApplicationRecord
  has_many(:members, { :class_name => "Member", :foreign_key => "family_id", :dependent => :destroy })
  has_many(:services, { :class_name => "Service", :foreign_key => "family_id", :dependent => :destroy })
end
