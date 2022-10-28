class GamesController < ApplicationController

    def index
        games = Game.all
        render json: GameSerializer.new(games).serialized_json
    end

    def show
        game = Game.find(params[:id])

        render json: GameSerializer.new(game).serialized_json
    end

    def create
        game = Game.new(game_params)

        if game.save
            render json: GameSerializer.new(game).serialized_json
        else
            render json: { error: game.errors.messages }, status: 422
        end
    end

    def update
        game = Game.find(params[:id])

        if game.update(game_params)
            render json: GameSerializer.new(game).serialized_json
        else
            render json: { error: game.errors.messages }, status: 422
        end
    end

    def destroy
        game = Game.find(params[:id])

        if game.destroy
            head :no_content
        else
            render json: { erorr: game.errors.messages }, status: 422
        end
    end

    private

    def game_params

        params.require(:game).permit(:name, :image_url)
    end

end