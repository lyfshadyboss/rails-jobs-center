class SubjectsController < ApplicationController
  layout 'admin'

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create(subject_params)
    @subject.save

    redirect_to admin_settings_path
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    @subject.update(subject_params)

    redirect_to admin_settings_path
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    redirect_to admin_settings_path
  end

  private

  def subject_params
    params.require(:subject).permit!
  end
end