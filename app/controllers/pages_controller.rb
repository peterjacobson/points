class PagesController < ApplicationController

  def index
    redirect_to new_user_session_path if !user_signed_in?
    @points = Point.all.order(:score).reverse
  end

end
