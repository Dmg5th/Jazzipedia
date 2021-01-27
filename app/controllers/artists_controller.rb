class ArtistsController < ApplicationController

    def index
        artists = Artist.all
        render json: artists, include: :era
    end 

    def show
        artist = Artist.find(params[:id])
        render json: artists, include: :era
    end 
    
    def destroy
        Artist.find(params[:id]).destroy
        render :json => {id: params[:id], message: "Record was successfully deleted"}
        binding.pry
        # if artist.destroy
        #     render :json => {id: params[:id], message: "Record was successfully deleted"}
        # else
        #     render :json => {message: "there was an error"}
        # end 
    end 
end


