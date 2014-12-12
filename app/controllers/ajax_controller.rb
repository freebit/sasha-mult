class AjaxController < ApplicationController

  def index


    case params[:type_action]

      when "add"
        message = add_video params[:video], params[:title]

      else
        message = "unknown action"

    end

    respond_to do |format|
      msg = { :status => "ok", :message => message }
      format.json {render :json => msg}
    end


  end

end
