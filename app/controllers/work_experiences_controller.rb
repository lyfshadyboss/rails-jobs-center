class WorkExperiencesController < ApplicationController
  def destroy
    work_experience_record = WorkExperience.find(params[:id])
    work_experience_record.destroy

    render :nothing => true
  end
end