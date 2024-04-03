class Product < ApplicationRecord
  # validates :price, numericality: true
  # validates :price, :name, presence: true
  # validates :description, length: { minimum: 20 }
  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :multiline => true
  belongs_to :supplier
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :images

  def supplier
    supplier = Supplier.find_by(id: supplier_id)
  end

  def is_discounted?
    price <= 10
  end

  
  def tax
    price * 0.09
  end

  def total
    tax + price
  end

  def images
    Image.where(product_id: id)
  end
end
