# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Role < ApplicationRecord
  has_many(:members, { :class_name => "Member", :foreign_key => "role_id", :dependent => :destroy })
  has_many(:chores, { :class_name => "Chore", :foreign_key => "role_id", :dependent => :destroy })
end
