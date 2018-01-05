class AdminController < ApplicationController
  before_action :get_pages
  layout 'admin'

  def dashboard
  end

  def pages
  end

  def get_pages
    @pages = Page.all
  end
end