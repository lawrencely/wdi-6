# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :mixtapes

  validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 2}
  validates :email, :presence => true, :uniqueness => true
end
