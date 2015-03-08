class PointsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create
    title = params[:title]
    description = params[:description]
    tag = params[:tag]
    image_url = params[:image_url]
    current_user.points.create(title: title, description: description, tag: tag, image_url: image_url)
    redirect_to :back
  end

  def upvote
    point = Point.find(params[:id])
    point.score += 1
    point.save
    redirect_to :back
  end

  def downvote
    point = Point.find(params[:id])
    point.score -= 1
    point.save
    redirect_to :back
  end

end
