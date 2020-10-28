class API::V1::OrdersController < ApplicationController
    #This is run whatever methods we tell it to, before it gets to the standard actions.
   #before_action :set_user

    def index
    end

    def new 
        order = Order.new
    end


    def create
        order = Order.create(order_params)
        if order.save
            render json: order
        else
            render new
        end
    end

    def show
    end







   api/v1/user/3/order

    private
        # def set_user
        #     @user = User.find(params[:user_id])
        # end

        # How do we add items from the menu to the current order? Here or in state?
        def add_items_to_order
           params[:order][:menu_item_ids]
           
        end

    def order_params
        params.require(:order).permit(:user_id,:total,:name_for_order,:menu_item_ids)
    end
end
