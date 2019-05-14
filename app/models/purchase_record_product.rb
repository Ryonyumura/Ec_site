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

class PurchaseRecordProduct < ApplicationRecord
  belongs_to :product
  belongs_to :purchase_record
end
