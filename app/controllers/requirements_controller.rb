class RequirementsController < ApplicationController
  def destroy
    requirement_record = Requirement.find(params[:id])
    requirement_record.destroy

    render :nothing => true
  end
end