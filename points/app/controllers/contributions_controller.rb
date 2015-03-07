class ContributionsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    point_id = params[:id]
    @point = Point.find(point_id)
    @contributions = @point.contributions_and_comments
  end

  def create
    current_user.contributions.create(point_id: params[:point_id], title: params[:title], text: params[:text], image_url: params[:image_url])
    redirect_to :back
  end

  def upvote
    contribution = Contribution.find(params[:id])
    contribution.score += 1
    contribution.save
    redirect_to :back
  end

  def downvote
    contribution = Contribution.find(params[:id])
    contribution.score -= 1
    contribution.save
    redirect_to :back
  end

end
