class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house =  House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = House.new(house_params)
    @house.save
    redirect_to @house
  end

  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to @house
    else
      render 'edit'
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  private
    def house_params
      params.require(:house).permit(:name, :words, :sigil_url, :territory)
    end
end
