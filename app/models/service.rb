# == Schema Information
#
# Table name: services
#
#  id           :integer          not null, primary key
#  category     :string
#  date         :date
#  image        :string
#  service_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  receiver_id  :integer
#
class Service < ApplicationRecord
end
