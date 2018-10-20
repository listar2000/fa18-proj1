class PokemonController < ApplicationController
  # pid -> the id of the pokemon
  def capture
    pid = params[:id]
    p = Pokemon.find_by(id:pid)
    p.trainer_id = current_trainer.id
    p.save
    redirect_to root_path
  end
end
