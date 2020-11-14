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
end
