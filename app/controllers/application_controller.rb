class ApplicationController < ActionController::Base
  protect_from_forgery

  def sorted(objs, default = nil)
    return objs if objs.blank?

    order = [sort_column, sort_direction].join(' ') if sort?
    order = default if default
    objs = objs.reorder(order) if order.present?
    objs
  end

  def sort_direction
    params[:sort] = params[:sort].blank? ? 'updated_at' : params[:sort]
    params[:direction] = params[:direction].blank? ? 'desc' : params[:direction]
  end

  def sort?
    params[:sort].present?
  end

  def sort_column
    return params[:sort] if sort?
    return 'created_at'
  end

  def sort_direction
    return params[:direction] if %w{asc desc}.include?(params[:direction])
    return 'asc'
  end

  helper_method :sort?
  helper_method :sort_column
  helper_method :sort_direction
end
