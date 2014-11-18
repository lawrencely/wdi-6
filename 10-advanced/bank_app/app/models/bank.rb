# == Schema Information
#
# Table name: banks
#
#  id           :integer          not null, primary key
#  account_name :string(255)
#  balance      :integer
#  withdraw     :integer
#  deposit      :integer
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#

class Bank < ActiveRecord::Base
  has_many :users
end
