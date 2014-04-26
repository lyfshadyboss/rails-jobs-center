class GloriesController < ApplicationController
  def destroy
    glory_record = Glory.find(params[:id])
    glory_record.destroy

    render :nothing => true
  end
end