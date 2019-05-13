class PurchaseRecord < ApplicationRecord
  belongs_to :user
  has_many :purchase_product_records, dependent: :destroy
  has_many :products, through: :purchase_record_products
end
