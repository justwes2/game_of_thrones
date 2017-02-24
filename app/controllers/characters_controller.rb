class CharactersController < ApplicationController

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
    @character.destroy
    redirect_to house_path(@house)
  end

  private
    def character_params
      params.require(:character).permit(:name, :photo_url, :quote)
    end
end
