require 'will_paginate/array'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  WillPaginate.per_page = 20

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      if resource_name == :admin
        return "admin"
      end

      if resource_name == :student
        return "student"
      end

      if resource_name == :company
        return "company"
      end
    end

    return "application"
  end

end
