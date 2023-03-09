class CommentsController < ApplicationController
      
    def index
        if params[:user_id] 
                comments = Comment.where(author_id: params[:user_id])
            render json: comments
        elsif params[:artwork_id]
            comments = Comment.where(artwork_id: params[:artwork_id])
              render json: comments
        else
            render json: Comment.all
        end
    end

     def create
       comment= Comment.new(comment_params)
        if comment.save
            render json: comment
        else
            render json: comment.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        wildcard = params[:id]
        comment = Comment.find(wildcard)
        artwork_id = comment.artwork_id
        comment.destroy
        redirect_to artwork_comments_url(artwork_id)

    end

    private
    
    def comment_params
        params.require(:comments).permit(:author_id, :artwork_id, :body)
    end

end
