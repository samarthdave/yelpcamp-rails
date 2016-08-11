class CommentsController < ApplicationController
  before_action :load_campground
  before_action :authenticate_user!
  def new
    @comment = Campground.comments.build
  end
  def create
    @comment = @campground.comments.new(comment_params)
    @comment.user = current_user
    if current_user.nil?
      flash[:danger] = "You need to be signed in to do that."
      redirect_to new_user_session_path
    else
      @comment.save
      redirect_to campground_path(@campground)
    end
  end
  
  def index
    @comments = @campground.comments.order("created_at DESC")
  end
  
  private
  
    def comment_params
      params.require(:comment).permit(:data)
    end
    
    def load_campground
      @campground = Campground.find(params[:campground_id])
    end
    
end