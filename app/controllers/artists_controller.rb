class ArtistsController < ApplicationController

    def index
        artists = Artist.all
        render json: artists
    end 
    
end


# render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json

# render json: sighting.to_json(include: [:bird, :location])