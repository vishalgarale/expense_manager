module ApplicationHelper
  def singular_model
    params[:controller].singularize
  end

  def change_name(val)
   val.gsub('is_','').gsub('_', ' ').titleize
  end
end
