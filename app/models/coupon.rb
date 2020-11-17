# == Schema Information
#
# Table name: coupons
#
#  id                :integer          not null, primary key
#  coupon_content    :string
#  expiration_date   :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  giver_id          :integer
#  receiver_id       :integer
#  redeem_service_id :integer
#
class Coupon < ApplicationRecord
  # def service
    # my_service_id = self.redeem_service_id

    # matching_services = Service.where({ :id => my_service_id })

    # the_service = matching_services.at(0)

    # return the_service
  # end
  belongs_to(:service, {
    :class_name => "Service",
    :foreign_key => "redeem_service_id"
  })

  # def member
    # coupon_giver_id = self.giver_id

    # matching_members = Member.where({ :id => coupon_giver_id })

    # the_member = matching_members.at(0)

    # return the_member
  # end
  belongs_to(:member, {
    :class_name => "Member",
    :foreign_key => "giver_id"
  })
end
