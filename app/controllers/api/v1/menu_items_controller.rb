class Api::V1::MenuItemsController < ApplicationController

def index
    items = MenuItem.all
    render json:items
end

def show
    item = MenuItem.find(params[:id])
    render json: item
end

#This would be reserved for the owner of the website ONLY! TODO- see bout making this private method.
def create
end


end

private
def menu_params
params.require(:menu_item).require(:name,:description,:price)
end