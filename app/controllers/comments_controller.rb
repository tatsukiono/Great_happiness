class CommentsController < ApplicationController
  before_action :set_theme

  # def index
  #   @comments = @theme.comments.includes(:user)
  #   @comment = Comment.new
  # end

  def new
    @comment = Comment.new
    @comments = @theme.comments.includes(:user)
  end

  def create
    @comment = @theme.comments.new(comment_params)
    if @comment.save
      # respond_to do |format|
      #   format.html{ redirect_to theme_path(@theme) }
        # format.json
      redirect_to theme_path(@theme)
    end
  end




  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end


  def set_theme
    @theme = Theme.find(params[:theme_id])
  end


end
