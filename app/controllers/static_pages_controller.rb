class StaticPagesController < ApplicationController

  def home
    @user_id = params[:user_id]
    unless @user_id.nil?
      @photos = user_photos(@user_id, 12)
    end
  end

end
