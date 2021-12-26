class DrinksController < ApplicationController

  def show
    @drink = Drink.find(params[:id])
  end

  def index
    @drinks = Drinks.all
  end

end
