# == Schema Information
#
# Table name: purchase_records
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PurchaseRecord < ApplicationRecord
  belongs_to :user
  has_many :purchase_product_records, dependent: :destroy
  has_many :products, through: :purchase_record_products
end
