class CommentsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create
    @contribution = Contribution.find(params[:contribution_id])
    @contribution.comments.create(text: params[:text], user_id: current_user.id)
    redirect_to :back
  end

  def upvote
    comment = Comment.find(params[:id])
    comment.score += 1
    comment.save
    redirect_to :back
  end

  def downvote
    comment = Comment.find(params[:id])
    comment.score -= 1
    comment.save
    redirect_to :back
  end

end
