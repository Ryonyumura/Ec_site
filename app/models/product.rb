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

class Product < ApplicationRecord
  has_many :basket_products, dependent: :destroy
  has_many :purchase_record_products, dependent: :destroy
  belongs_to :admin

  include Hashid::Rails

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :unit, presence: true

  extend Enumerize
   enumerize :unit, in: [:yen, :usd]
end
