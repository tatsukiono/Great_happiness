class CommentsController < ApplicationController
  before_action :set_theme

  def index
    
  end

  def create
    
  end

  private
  def 
  end

  def set_theme
    @theme = Theme.find(params[:])
  end


end
