class EducationsController < ApplicationController
  def destroy
    education_record = Education.find(params[:id])
    education_record.destroy

    render :nothing => true
  end
end