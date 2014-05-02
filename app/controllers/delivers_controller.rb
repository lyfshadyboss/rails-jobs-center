class DeliversController < ApplicationController
  def destroy
    @deliver = Deliver.find(params[:id])
    @deliver.destroy

    redirect_to :back
  end
end