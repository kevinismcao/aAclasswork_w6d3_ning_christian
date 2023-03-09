class ArtworksController < ApplicationController

    def index
        if params[:user_id]
                artwork = Artwork.where(artist_id: params[:user_id])
                shared_artwork = Artwork.joins(:shared_viewers)
                                    .where(artwork_shares: {viewer_id: params[:user_id]})
            render json: artwork + shared_artwork
        else
            render json: Artwork.all
        end
    end

    def create
       artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        wildcard = params[:id]
        artwork = Artwork.find(wildcard)
        render json: artwork
    end

    def update
        wildcard = params[:id]
        artwork = Artwork.find(wildcard)
        if artwork && artwork.update(artwork_params)
            redirect_to artwork_url(artwork.id)
        else  
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        wildcard = params[:id]
        artwork = Artwork.find(wildcard)
        artwork.destroy
        redirect_to artworks_url

    end

    private
    
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end
