class ArtworkSharesController < ApplicationController
     
    
     def create
       artwork_share= ArtworkShare.new(artwork_share_params)
        if artwork_share.save
            render json: artwork_share
        else
            render json: artwork_share.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        wildcard = params[:id]
        artwork_share = ArtworkShare.find(wildcard)
        artwork_share.destroy
        redirect_to artworks_url

    end

    private
    
    def artwork_share_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end


end
