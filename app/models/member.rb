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
  # def coupons
    # my_id = self.id

    # matching_coupons = Coupon.where({ :giver_id => my_id })

    # return matching_coupons
  # end
  has_many(:coupons, {
    :class_name => "Coupon",
    :foreign_key => "giver_id"
  })

  # def family
    # my_family_id = self.family_id

    # matching_families = Family.where({ :id => my_family_id })

    # the_family = matching_families.at(0)

    # return the_family
  # end
  belongs_to(:family, {
    :class_name => "Family",
    :foreign_key => "family_id"
  })

  # def user
    # my_user_id = self.user_id

    # matching_users = User.where({ :id => my_user_id })

    # the_user = matching_users.at(0)

    # return the_user
  # end
  belongs_to(:user, {
    :class_name => "User",
    :foreign_key => "user_id"
  })

  # def role
    # my_role_id = self.role_id

    # matching_roles = Role.where({ :id => my_role_id })

    # the_role = matching_roles.at(0)

    # return the_role
  # end
  belongs_to(:role, {
    :class_name => "Role",
    :foreign_key => "role_id"
  })
  
end
