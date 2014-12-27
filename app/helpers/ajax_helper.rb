module AjaxHelper

  def add_video(id, title)
    current_user.mults.create video_id:id, title:title
  end

  def delete_video video_id
    mult = current_user.mults.find_by_video_id video_id
    mult.destroy
  end

end
