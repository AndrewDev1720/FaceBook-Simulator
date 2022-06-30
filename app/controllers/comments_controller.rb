class CommentsController < ApplicationController
    def create
        Comment.create!(commentsParams())
        if params[:comment][:homepage_id] == nil
            redirect_to articles_path
        else
            redirect_to user_path(params[:comment][:homepage_id].to_i) 
        end
    end

    private def commentsParams()
        params.require(:comment).permit(:user_id, :body, :commentable_id, :commentable_type)
    end
  end