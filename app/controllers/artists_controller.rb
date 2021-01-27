class ArtistsController < ApplicationController

    def index
        artists = Artist.all
        render json: artists, include: :era
    end 
    
    def destroy
        Artist.find(params[:id]).destroy
        render :json => {id: params[:id]}
    end 
end


