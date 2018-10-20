class HomeController < ApplicationController

  def index
    trainerless_pokemon = Pokemon.where(trainer: nil)
    @pokemon = trainerless_pokemon.sample
  end

  def demo
    render plain: "go go go!" + params[:id]
  end
end
