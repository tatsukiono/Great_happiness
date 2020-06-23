class UsersController < ApplicationController

  def index
    @all_ranks = Comment.find(Like.group(:comment_id).order('count(comment_id) desc').pluck(:comment_id))
    @my_ranks = @all_ranks.select{ |comment| comment.user_id == current_user.id }
  end

  def likes
    @users = current_user.likes.page(params[:page]).order("created_at ASC").per(10)
  end

end
