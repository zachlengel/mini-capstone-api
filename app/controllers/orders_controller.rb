class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    end
  end

  def create
    product = Product.find_by(id: params["product_id"])

    calculated_subtotal = product.price * params["quantity"].to_i
    calculated_tax = calculated_subtotal / 10
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if @order.valid?
      render json: { message: "Order successfully sent!" }
    else
      render json: { errors: @order.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
