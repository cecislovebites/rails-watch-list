class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create destory]
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.delete(:list_id)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :list_id)
  end

end
