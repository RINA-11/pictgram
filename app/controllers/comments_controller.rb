class CommentsController < ApplicationController
  
  def new
    @comment=Comment.new
  end
  
  def create
    @comment=Comment.new(content:params[:content],user_id:current_user.id,topic_id:params[:topic_id])
    if @comment.save
      redirect_to topics_path,success:"コメントを投稿しました"
    else
      flash.now[:danger]="コメントの投稿に失敗しました"
      render :new
    end
  end
  
end
