# == Schema Information
#
# Table name: members
#
#  id            :integer          not null, primary key
#  bio           :text
#  name          :string
#  profile_image :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Member < ApplicationRecord
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
