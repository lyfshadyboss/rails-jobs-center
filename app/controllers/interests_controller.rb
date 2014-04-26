class InterestsController < ApplicationController
  def destroy
    interest_record = Interest.find(params[:id])
    interest_record.destroy

    render :nothing => true
  end
end