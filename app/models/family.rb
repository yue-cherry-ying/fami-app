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
end
