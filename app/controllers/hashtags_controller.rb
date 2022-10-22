class HashtagsController < ApplicationController
    def new
        @hashtag = Hashtag.new
    end
    
    def create
        @hashtag = Hashtag.create(hashtag_params)
        if(@hashtag.save)
            flash[:notice] = "Hashtag was successfully created"
        redirect_to @hashtag
        else
            render 'new'
        end
    end

    def index

    end

    def show
    
    end

    def hashtag_params
        params.require(:hashtag).permit(:name)
    end
end