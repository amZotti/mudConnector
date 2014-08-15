class AttacksController < ApplicationController
  def create
    @character = current_user.character
    @attack_message = Attack.new(@character, target, attack_params[:attack_type]).hit
    @map = Map.new(@character).display
    redirect_to "/"
  end

  private

  def attack_params
    params.permit(
      :target_id,
      :target_type,
      :attack_type,
    )
  end

  def target
    if attack_params[:target_type] == "NonPlayerCharacter"
      NonPlayerCharacter.find(attack_params[:target_id])
    else
      Character.find(attack_params[:target_id])
    end 
  end
end
