class OrdersController < ApplicationController
  def create
    @order = Order.create(
      user_id: params["user_id"],
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      total: params["total"],
    )
    if @order.valid?
      render json: { message: "Order successfully sent!" }
    else
      render json: { errors: @order.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
