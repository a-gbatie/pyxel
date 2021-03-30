class AdventuresController < ApplicationController
    def index
        adventures = Adventure.all
        render json: adventures, include: [:comments]
    end

    def show
        adventure = Adventure.find(params[:id])
        render json: adventure
    end

    def create
        adventure = Adventure.create(adventure_params)
        render json: adventure
    end

    def update
        adventure = Adventure.find(params[:id])
        adventure.update(description: (params[:description]))
        adventure.update(likes: (params[:likes]))
        render json: adventure
    end

    def destroy 
        adventure = Adventure.find(params[:id])
        adventure.destroy
        render json: adventure
    end

    private
    def adventure_params
        params.require(:adventure).permit(:title, :photo, :location, :hashtags, :description, :likes)
    end

end
