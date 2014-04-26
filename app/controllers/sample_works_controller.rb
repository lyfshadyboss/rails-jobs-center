class SampleWorksController < ApplicationController
  def destroy
    sample_record = SampleWork.find(params[:id])
    sample_record.destroy

    render :nothing => true
  end
end