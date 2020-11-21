# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  family_id  :integer
#  role_id    :integer
#  user_id    :integer
#
class Member < ApplicationRecord
  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:family, { :required => false, :class_name => "Family", :foreign_key => "family_id" })
  belongs_to(:role, { :required => false, :class_name => "Role", :foreign_key => "role_id" })
  # def coupons
    # my_id = self.id

    # matching_coupons = Coupon.where({ :giver_id => my_id })

    # return matching_coupons
  # end
  has_many(:coupons, {
    :class_name => "Coupon",
    :foreign_key => "giver_id"
  })
  
end
