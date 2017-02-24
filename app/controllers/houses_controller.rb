class HousesController < ApplicationController
  def new

  end

  def create
    render plain: params[:house].inspect
  end

end
