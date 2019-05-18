# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  admin_id    :integer          not null
#  name        :string           not null
#  description :text             not null
#  price       :integer          not null
#  unit        :string           default("yen"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
