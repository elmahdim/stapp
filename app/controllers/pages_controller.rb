class PagesController < ApplicationController
  def show
    @page = Page.find_by_slug(params[:page])
    render template: "pages/#{params[:page]}"
  end
end