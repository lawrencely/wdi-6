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

require 'rails_helper'

RSpec.describe Bank, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
