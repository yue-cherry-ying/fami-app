# == Schema Information
#
# Table name: chores
#
#  id          :integer          not null, primary key
#  category    :string
#  chore_image :string
#  chore_name  :string
#  completed   :boolean
#  due_date    :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  coupon_id   :integer
#  family_id   :integer
#  role_id     :integer
#
class Chore < ApplicationRecord
  belongs_to(:family, { :required => false, :class_name => "Family", :foreign_key => "family_id" })
  belongs_to(:role, { :required => false, :class_name => "Role", :foreign_key => "role_id" })
  has_many(:coupons, { :class_name => "Coupon", :foreign_key => "chore_id", :dependent => :destroy })
  belongs_to(:coupon, { :required => false, :class_name => "Coupon", :foreign_key => "coupon_id" })
  has_many(:receiver, { :through => :coupons, :source => :receiver })
end
