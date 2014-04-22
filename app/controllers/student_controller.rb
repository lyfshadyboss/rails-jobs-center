class StudentController < ApplicationController
  before_action :authenticate_student!

  def index
  end

  def information
  end

  def commit_for_update
  end
end
