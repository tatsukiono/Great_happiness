class ThemesController < ApplicationController

  def index
    @themes = Theme.all.page(params[:page]).order("created_at ASC").per(10)
    @themes_rank = Theme.find(Comment.group(:theme_id).order('count(theme_id) desc').pluck(:theme_id))
    
  end

  def new
    @theme = Theme.new
  end

  def create
    Theme.create(theme_params)
    redirect_to root_path
  end

  def show
    @theme = Theme.find(params[:id])
    @comments = @theme.comments.includes(:user)
    @comment = Comment.new
    @all_ranks = Comment.find(Like.group(:comment_id).order('count(comment_id) desc').pluck(:comment_id))
    @theme_ranks = @all_ranks.select{ |comment| comment.theme_id == @theme.id }
  end


  def search
    @themes_rank = Theme.find(Comment.group(:theme_id).order('count(theme_id) desc').pluck(:theme_id))
    @themes = Theme.all.page(params[:page]).order("created_at ASC").per(10)
    @all_ranks = Comment.find(Like.group(:comment_id).order('count(comment_id) desc').pluck(:comment_id))
  end




  private
  def theme_params
    params.require(:theme).permit(:title, :image).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:q).permit(:sorts)
    # 他のパラメーターもここに入れる
  end

end
