# == Schema Information
#
# Table name: baskets
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Basket < ApplicationRecord

  has_many :basket_products, dependent: :destroy
  has_many :products, through: :basket_products
  belongs_to :user, dependent: :destroy

  def total_price(product_ids: nil)
       products = product_ids ? self.products.where(id: product_ids) : self.products
       PriceCalculator.total(products)
  end

end
