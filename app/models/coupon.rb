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
    # my_service_id = self.id

    # matching_services = Service.where({ :coupon_id => my_service_id })

    # the_service = matching_services.at(0)

    # return the_service
  # end
  has_many(:service, {
    :class_name => "Service",
    :foreign_key => "coupon_id"
  })
end
