class AdminController < ApplicationController
  layout 'admin'

  def dashboard
    @foo = 'AdminController'
  end
end