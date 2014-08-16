class AttacksController < ApplicationController
  def create
    round = Round.new(attack_params)
    flash[:warning] = round.warning_message
    round.initiate_attack
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
end
