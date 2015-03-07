class Comment < ActiveRecord::Base

  def author
    author = User.find_by(id: user_id) || author = Group.find_by(id: group_id)
  end

end
