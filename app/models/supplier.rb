class Supplier < ApplicationRecord
  validates :name, presence: true

  has_many :products

  def products
    Product.where(supplier_id: id)
  end
end
