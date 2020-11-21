# == Schema Information
#
# Table name: coupons
#
#  id              :integer          not null, primary key
#  coupon_content  :string
#  expiration_date :date
#  redeemed        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  chore_id        :integer
#  giver_id        :integer
#  receiver_id     :integer
#
class Coupon < ApplicationRecord
  belongs_to(:receiver, { :required => false, :class_name => "User", :foreign_key => "receiver_id" })
  belongs_to(:chore, { :required => false, :class_name => "Chore", :foreign_key => "chore_id" })
  has_many(:chores, { :class_name => "Chore", :foreign_key => "coupon_id", :dependent => :destroy })
end
