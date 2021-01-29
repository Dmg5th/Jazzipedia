class ErasController < ApplicationController

    def index
        eras = Era.all 
        render json: eras, :include => :artists, :status => 200
    end 


end
