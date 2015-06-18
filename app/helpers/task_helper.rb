module TaskHelper
  def format_task_for_list(task, i)
    html = ""
    html << "<div"
    html << " class='completed_task'" if task.completed_at
    html << ">" +
            "<p>" +
            "<span class='task_name'>#{ i + 1 }. #{ task.name }</span>"
    # html << "<span class='complete_date'>Completed: #{ task.completed_at.to_formatted_s(:long) }</span>" if task.completed_at
    html << "</p>"
    # html << "<p class='task_descr'> - #{task.description}</p>" if task.description
    html << "</div>"
    html.html_safe
  end

  def format_task_for_view(task)
    html = ""
    # html << "<div"
    # html << " class='completed_task'" if task.completed_at
    # html << ">"
    html << "<p>" +
            "<span class='task_name'>#{ task.name }</span>"
    if task.completed_at
      html << "<span class='complete_date'>Completed: #{ task.completed_at.to_formatted_s(:long) }</span>"
    else
      html << "<span class='complete_date'> Not Completed</span>"
    end
    html << "</p>"
    html << "<p class='task_descr'> - #{task.description}</p>" if task.description
    # html << "</div>"
    html.html_safe
  end

end
