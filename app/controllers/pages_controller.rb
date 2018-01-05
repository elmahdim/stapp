class PagesController < ApplicationController
  rescue_from ActionView::MissingTemplate, with: :render_default_page

  def show
    @page = Page.find_by!(slug: params[:page])
    render template: "pages/#{params[:page]}"
  end

  def render_default_page
    render template: 'pages/page'
  end
end