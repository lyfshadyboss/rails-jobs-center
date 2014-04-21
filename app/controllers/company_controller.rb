class CompanyController < ApplicationController
  before_action :authenticate_company!

  def index
  end
end
