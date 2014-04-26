class SkillsController < ApplicationController
  def destroy
    skill_record = Skill.find(params[:id])
    skill_record.destroy

    render :nothing => true
  end
end