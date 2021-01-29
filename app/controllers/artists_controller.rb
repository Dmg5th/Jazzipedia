class ArtistsController < ApplicationController

    def index
        artists = Artist.all
        render json: artists, :include => :era, :status => 200
    end 

    def create 
        era = Era.find_by(name: params[:era])
        artist = Artist.create(name: params[:name], album: params[:album], bio: params[:bio], url: [:url], era: era)
        if artist.name != ""
        render json: artist, :include => :era, :status => 201
        end 
    end 

    def show
        artist = Artist.find(params[:id])
        render json: artist, :include => :era , :status => 200
    end 
    
    # def destroy
    #     # Artist.find(params[:id]).destroy
    #     # render :json => {id: params[:id], message: "Record was successfully deleted"}, :status => 200
      
         
        
    #     # if artist.destroy
    #     #     render :json => {id: params[:id], message: "Record was successfully deleted"}
    #     # else
    #     #     render :json => {message: "there was an error"}
    #     # end 
    # end 
end


