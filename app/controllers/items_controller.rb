class ItemsController < ApplicationController
    def index
        items = Item.all.includes(:user)
        render json: items, include: [:user]
    end
end
