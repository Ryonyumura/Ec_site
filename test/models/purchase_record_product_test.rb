# == Schema Information
#
# Table name: purchase_record_products
#
#  id                 :integer          not null, primary key
#  purchase_record_id :integer          not null
#  product_id         :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class PurchaseRecordProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
