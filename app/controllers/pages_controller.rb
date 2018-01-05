class PagesController < ApplicationController
  rescue_from ActionView::MissingTemplate, with: :render_default_page
  before_action :current_page, only: [:edit, :update]
  layout 'admin', only: [:edit, :update]

  def show
    @page = Page.find_by!(slug: params[:page])
    render template: "pages/#{params[:page]}"
  end

  def render_default_page
    render template: 'pages/page'
  end

  def edit
  end

  def update
    permitted_columns = params.require(:page).permit(:title, :desc, :content)
    respond_to do |format|
      if @current.update_attributes(permitted_columns)
        format.html {
          redirect_to edit_page_path(@current),
                      notice: ['Update Complete', 'Page was successfully updated.',
                               "View #{view_context.link_to(@current.title, root_path + @current.slug)}"]}
      end
    end
  end

  private

  def current_page
    @current = Page.find(params[:id])
  end
end