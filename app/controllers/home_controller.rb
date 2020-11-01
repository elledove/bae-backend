class HomeController < ApplicationController


    def index
        render json: {messsage: "Halo Boss"}
    end
end