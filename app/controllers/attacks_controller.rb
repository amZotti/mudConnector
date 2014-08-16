class AttacksController < ApplicationController
  def create
    Round.new(attack_params).start_new_round
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
