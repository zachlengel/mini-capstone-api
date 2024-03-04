class Product < ApplicationRecord
  validates :price, numericality: true
  validates :price, :name, presence: true
  validates :description, length: { minimum: 20 }
  validates :image_url, presence: true
  validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :multiline => true

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end
end
