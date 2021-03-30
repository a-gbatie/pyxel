class CommentsController < ApplicationController
    def index 
        comments = Comment.all 
        render json: comments
    end

    def show 
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comments: (params[:comments]))
        render json: comment
    end

    private
    def comment_params
        params.require(:comment).permit(:comments, :adventure_id, :user_id)
    end
    #not sure about the params on this one^ 

end
