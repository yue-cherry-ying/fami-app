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
  has_many(:members, { :class_name => "Member", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:coupons, { :class_name => "Coupon", :foreign_key => "receiver_id", :dependent => :destroy })
  has_many(:services, { :through => :coupons, :source => :service })
end
