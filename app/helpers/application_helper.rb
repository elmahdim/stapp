module ApplicationHelper
  def page_heading
    params[:page].capitalize
  end

  def app_name
    Rails.application.class.parent_name
  end
end
