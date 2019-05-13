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

  USD_RATE = 110.freeze

  has_many :basket_products, dependent: :destroy
  has_many :products, through: :basket_products
  belongs_to :user, dependent: :destroy

  def total_price
    total_jpn_price + total_usd_price
  end

private

  def total_jpn_price
    jp_products = products.where(unit: "yen")
    jp_products.sum(:price)
  end

  def total_usd_price
    usd_products = products.where(unit:"usd")
    usd_products.sum(:price)*USD_RATE
  end

end
