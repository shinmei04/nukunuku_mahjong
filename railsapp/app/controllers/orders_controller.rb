class OrdersController < ApplicationController
    def index
      @orders = Order.all
    end
  
    def new
      @order = Order.new
      @destinations = Destination.all
      @senders = Sender.all
      @packages = Package.all
    end
  
    def create
      @order = Order.new(order_params)
      if @order.save
        redirect_to orders_path, notice: 'Order was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def order_params
        params.require(:order).permit(
          destination_attributes: [
            :postal_code, :phone_number, :prefecture, :city, :address, :building,
            :company_name, :department_name, :last_name, :first_name
          ],
          sender_attributes: [
            :postal_code, :phone_number, :prefecture, :city, :address, :building,
            :company_name, :department_name, :last_name, :first_name
          ],
          shipment_attributes: [
            :item_name, :handling, :shipping_date, :desired_delivery_date,
            :desired_delivery_time, :number_of_items
          ]
        )
    end
  end
  
