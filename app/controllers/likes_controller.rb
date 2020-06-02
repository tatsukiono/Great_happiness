class LikesController < ApplicationController
  before_action :set_like

  def create
    @like = Like.create(comment_id: params[:comment_id], user_id: current_user.id, theme_id: params[:theme_id])
    @theme = Theme.find(params[:theme_id])
    # redirect_to theme_path(@theme)
    # redirect_to root_path
  end

  def destroy
    @like = Like.find_by(comment_id: params[:comment_id], user_id: current_user.id)
    @theme = Theme.find(params[:theme_id])
    @like.destroy
    # redirect_to theme_path(@theme)
    # redirect_to root_path
  end

  private
  def set_like
    @comment = Comment.find(params[:comment_id])
    @theme = Theme.find(params[:theme_id])
  end

end
