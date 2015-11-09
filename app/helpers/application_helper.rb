module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (sort? && column == sort_column) ? "#{sort_direction == 'asc' ? 'icon-chevron-up' : ' icon-chevron-down'}" : nil
    direction = (sort? && column == sort_column && sort_direction == 'asc') ? 'desc' : 'asc'
    link_to raw(title), params.merge(sort: column, direction: direction, page: params[:page]), {class: css_class}
  end
end
