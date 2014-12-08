module ApplicationHelper

  def full_title(title)

    base_title = "Любимые мультфильмы"

    if title.empty?
      base_title
    else
      "#{base_title} | #{title}"
    end

  end

end
