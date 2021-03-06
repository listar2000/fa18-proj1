class PokemonController < ApplicationController
  # pid -> the id of the pokemon
  def capture
    pid = params[:id]
    p = Pokemon.find_by(id:pid)
    p.trainer_id = current_trainer.id
    p.save
    redirect_to root_path
  end

  def damage
    pid = params[:id]
    p = Pokemon.find_by(id:pid)
    p.health -= 10
    if p.health <= 0
      p.destroy
    else
    p.save
    end
    redirect_to trainer_path(id: p.trainer_id)
  end

  def cure
    pid = params[:id]
    p = Pokemon.find_by(id:pid)
    if p.health > 90
      p.health = 100
    else
      p.health += 10
    end
    p.save
    redirect_to trainer_path(id: p.trainer_id)
  end

  def new
    if params.has_key?(:msg)
      @msg = true
    end
  end

  def create
    @poke_params = pokemon_params
    if @poke_params[:name].blank? or Pokemon.exists?(name: @poke_params[:name])
      redirect_to new_pokemon_path(id: current_trainer.id, msg: true)
    else
      @pokemon = Pokemon.new(pokemon_params)
      @pokemon.trainer_id = current_trainer.id
      @pokemon.save
      redirect_to trainer_path(id: @pokemon.trainer_id)
    end
  end

  # def demo
  #   @name = pokemon_params[:name]
  # end

  private

  def pokemon_params
    params[:pokemon].permit(:name, :ndex)
  end
end
