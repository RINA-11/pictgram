class CommentsController < ApplicationController
  
  def new
    @comment=Comment.new
    @comment.topic_id=params[:topic_id]
    @comment.user_id=current_user.id
  end
  
  def create
    @comment=Comment.new(comment_params)
    if @comment.save
      redirect_to topics_path,success:"コメントを投稿しました"
    else
      flash.now[:danger]="コメントの投稿に失敗しました"
      render :new
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:content,:user_id,:topic_id)
  end
  
end
