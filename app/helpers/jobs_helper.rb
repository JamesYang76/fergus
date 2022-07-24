module JobsHelper
  def sort_link(column:, label:)
    if column == params[:column]
      link_to(label, jobs_path(column: column, direction: next_direction, search: params[:search]))
    else
      link_to(label, jobs_path(column: column, direction: 'asc', search: params[:search]))
    end
  end

  def next_direction
    params[:direction] == 'asc' ? 'desc' : 'asc'
  end
end
