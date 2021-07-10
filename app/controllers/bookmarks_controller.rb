class BookmarksController < ApplicationController
    def new
        @bookmark = Bookmark.new
    end

    def create
        @bookmark = Bookmark.new(params.require(:bookmark).permit(:comment))
        if @bookmark.save
            redirect_to list_path(@bookmark)
        else
            render :new
        end
    end

    def destroy
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy
        redirect_to lists_path
    end
end
