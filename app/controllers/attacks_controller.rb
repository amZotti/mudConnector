class AttacksController < ApplicationController
  def create
    character = current_user.character
    Attack.new(character, target, attack_params[:attack_type]).hit
    redirect_to root_path
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
