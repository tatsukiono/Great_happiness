class ThemesController < ApplicationController

  def index
    @themes = Theme.all
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
  end

  private
  def theme_params
    params.require(:theme).permit(:title).merge(user_id: current_user.id)
  end

end
