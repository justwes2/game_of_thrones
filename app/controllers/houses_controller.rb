class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @house = House.new(house_params)
    @house.save
    redirect_to @house
  end

  def update
  end

  def destroy
  end

  private
    def house_params
      params.require(:house).permit(:name, :words, :sigil_url, :territory)
    end
end
