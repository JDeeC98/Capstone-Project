class PlatfrormController < ApplicationController

    def index
        platforms = Platform.all

        render json: PlatformSerializer.new(platform).serialized_json
    end

end