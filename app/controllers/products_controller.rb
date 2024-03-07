class ProductsController < ApplicationController
  def product1
    @product = Product.first
    render :show
  end

  def last_product
    @product = Product.last
    render :show
  end

  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"],
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
      supplier_id: params["supplier_id"] || @product.supplier_id,
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "This item has been deleted." }
  end
end
