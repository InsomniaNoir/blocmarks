class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    @user = User.find(params[:sender])
    @topic = Topic.find(params[:subject])
    @url = params['body-plain']

    head 200
  end
end
