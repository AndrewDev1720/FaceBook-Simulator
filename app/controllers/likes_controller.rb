class LikesController < ApplicationController
    def create
        Like.create!(likesParams())
        redirect_to articles_path
    end

    def destroy
        
    end

    private def likesParams()
        params.permit(:user_id, :likable_id, :likable_type)
    end
end