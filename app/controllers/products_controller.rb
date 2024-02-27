class ProductsController < ApplicationController
  def product1
    @product = Product.first
    render :show
  end

  def last_product
    @product = Product.last
    render :show
  end

  def all_products
    @products = Product.all
    render :index
  end

  def by_id
    @product = Product.find_by(id: params["id"])
    render :show
  end
end
