class StudentController < ApplicationController
  before_action :authenticate_student!

  def index
  end

  def information
  end
end
