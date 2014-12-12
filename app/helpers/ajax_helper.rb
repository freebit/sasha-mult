module AjaxHelper

  def add_video(id, title)

    current_user.mults.create video_id:id, title:title

  end

end
