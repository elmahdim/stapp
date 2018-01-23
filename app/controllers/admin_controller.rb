class AdminController < ApplicationController
  before_action :get_pages, :get_contacts
  layout 'admin'

  def dashboard
  end

  def pages
  end

  def get_pages
    @pages = Page.all
  end

  def get_contacts
    @contacts = Contacts.first
  end
end