class Supplier < ApplicationRecord
  validates :name, presence: true

  def products
    Product.where(supplier_id: id)
  end
end
