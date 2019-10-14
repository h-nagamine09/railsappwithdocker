class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = "コメントを投稿しました"
      redirect_to comment.board
    else
      redirect_to :back, flash: {
        comment: comment,
        error_messeges: comment.errors.full_message
      }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:board_id,:name,:comment)
  end
end
