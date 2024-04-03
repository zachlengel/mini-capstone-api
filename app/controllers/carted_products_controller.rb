class CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: nil
    )
    if @carted_product.valid?
      render json: {message: "Product added to cart!"}
    else
      render json: { errors: @carted_product.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def index
    @carted_products = current_user.carted_products
    render :index
  end

  def destroy
    @carted_products = current_user.carted_products.find_by(id: params["id"])
    

end
