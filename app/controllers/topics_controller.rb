class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:topic_id])
  end

  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    if @topic.update_attributes( topic_params )
      flash[:notice] = "Topic was updated"
    else
      flash[:error] = "Topic could not be updated at this time"
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :user_id)
  end
end
