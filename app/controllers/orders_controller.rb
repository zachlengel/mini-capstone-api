class OrdersController < ApplicationController
  before_action :authenticate_user

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    subtotal = 0
    index = 0
    while index < carted_products.length
      carted_product = carted_products[index]
      subtotal = subtotal + carted_product.product.price * carted_product.quantity
    index = index + 1
    end

    tax = subtotal * 0.20
    total = subtotal + tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,
    )
    if @order.save
    index = 0
    while index < carted_products.length
      carted_product = carted_products[index]
      carted_product.update(status: "purchased", order_id: @order.id)
      index = index + 1
    end
    render :show
    else
      render json: { errors: @order.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
