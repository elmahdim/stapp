class AdminController < ApplicationController
  layout 'admin'

  def dashboard
    @pages = Page.all
  end
end