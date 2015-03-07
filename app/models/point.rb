class Point < ActiveRecord::Base

  has_many :contributions

  def author
    author = User.find_by(id: user_id) || author = Group.find_by(id: group_id)
  end

  def contributions_and_comments
    contributions.map do |contribution|
      {contribution: contribution, comments: contribution.comments.order(:score).reverse }
    end
  end

end
