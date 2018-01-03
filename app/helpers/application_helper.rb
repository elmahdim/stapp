module ApplicationHelper
  def page_heading
    params[:page].capitalize
  end
end
