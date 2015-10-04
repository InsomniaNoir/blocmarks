class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new( bookmark_params )
    if @bookmark.save
      flash[:notice] = "Your bookmark has been saved."
      redirect_to @bookmark
    else
      flash[:error] = "Your bookmark could not be created"
      redirect_to bookmarks_new_path
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:topic_id])
    if @bookmark.update_attributes( bookmark_params )
      flash[:notice] = "Bookmark was updated."
    else
      flash[:error] = "Bookmark was not updated."
    end
    redirect_to @bookmark
  end

  def update
    @bookmark = Bookmark.find(params[:topic_id])
    if @bookmark.update_attributes( bookmark_params )
      flash[:notice] = "Bookmark was updated."
      redirect_to @bookmark
    else
      flash[:error] = "Bookmark was not updated."
      render :edit
    end
  end

  def show
    @bookmark = Bookmark.find(parmas[:topic_id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:topic_id])
    if @bookmark.destroy
      flash[:notice] = "Your bookmark has been deleted."
      redirect_to topic_bookmark_path
    else
      flash[:error] = "Your bookmark could not be deleted."
      render :show
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :topic_id)
  end
end
