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
  # def members
    # my_family_id = self.id

    # matching_members = Member.where({ :family_id => my_family_id })

    # return matching_members
  # end
  has_many(:members, {
    :class_name => "Member",
    :foreign_key => "family_id"
  })
end
