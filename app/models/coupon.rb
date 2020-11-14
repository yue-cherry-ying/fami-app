# == Schema Information
#
# Table name: coupons
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  giver_id    :integer
#  receiver_id :integer
#
class Coupon < ApplicationRecord
end
