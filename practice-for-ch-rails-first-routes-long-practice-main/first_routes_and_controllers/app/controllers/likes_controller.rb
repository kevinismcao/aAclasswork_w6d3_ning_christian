class LikesController < ApplicationController

    # def index
    #     if params[:likeable_type] == "Comment" && params[:likeable_id]
    #             like = Like.where(likeable_id: params[:likeable_id])
    #         render json: like
    #     elsif params[:likeable_type] == 'Artwork'
    #         like = Like.where(likeable_id: params[:likeable_id])
    #           render json: like
    #     elsif params[:user_id]
    #         like = Like.where(liker_id: params[:user_id])
    #         render json: like
    #     else
    #         render json: Like.all
    #     end
    # end

    def index
        if params[:artwork_id]
            like = Like.where(likeable_id: params[:artwork_id], likeable_type: 'Artwork')
            render json: like
          
        elsif params[:comment_id]
            like = Like.where(likeable_id: params[:comment_id], likeable_type: 'Comment')    
            render json: like
         
        elsif params[:user_id]
                like = Like.where(liker_id: params[:user_id])
            render json: like
        else
            render json: Like.all
        end
    end

    def create
       like = Like.new(like_params)
        if like.save
            render json: like
        else
            render json: like.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        wildcard = params[:id]
        like = Like.find(wildcard)

        like.destroy
        render json: like

    end


    private
    def like_params
        params.require(:like).permit(:liker_id, :likeable_type, :likeable_id)
    end
end