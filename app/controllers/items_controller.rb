# app/controllers/items_controller.rb
class ItemsController < ApplicationController
    def index
      @items = Item.all
      render json: @items
    end
  
    def show
      @item = Item.find(params[:id])
      render json: @item
    end
  
    def create
      @item = Item.new(item_params)
      if @item.save
        render json: @item, status: :created
      else
        render json: @item.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @item = Item.find(params[:id])
      if @item.update(item_params)
        render json: @item
      else
        render json: @item.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      head :no_content
    end
  
    private
  
    def item_params
      params.require(:item).permit(:name, :item_type, :price, :tax_rate)
    end
  end