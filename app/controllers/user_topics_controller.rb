class UserTopicsController < ApplicationController
  before_action :set_user_topic, only: [:show, :update, :destroy]

  # GET /user_topics
  def index
    @user_topics = UserTopic.all

    render json: @user_topics
  end

  # GET /user_topics/1
  def show
    render json: @user_topic
  end

  # POST /user_topics
  def create
    @user_topic = UserTopic.new(user_topic_params)

    if @user_topic.save
      render json: @user_topic, status: :created, location: @user_topic
    else
      render json: @user_topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_topics/1
  def update
    if @user_topic.update(user_topic_params)
      render json: @user_topic
    else
      render json: @user_topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_topics/1
  def destroy
    @user_topic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_topic
      @user_topic = UserTopic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_topic_params
      params.require(:user_topic).permit(:user_id, :topic_id)
    end
end
