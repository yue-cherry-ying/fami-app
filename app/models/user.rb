# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  bio             :text
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  profile_image   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
end
