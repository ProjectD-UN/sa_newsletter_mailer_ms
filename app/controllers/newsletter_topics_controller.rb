class NewsletterTopicsController < ApplicationController
  before_action :set_newsletter_topic, only: [:show, :update, :destroy]

  # GET /newsletter_topics
  def index
    @newsletter_topics = NewsletterTopic.all

    render json: @newsletter_topics
  end

  # GET /newsletter_topics/1
  def show
    render json: @newsletter_topic
  end

  # POST /newsletter_topics
  def create
    @newsletter_topic = NewsletterTopic.new(newsletter_topic_params)

    if @newsletter_topic.save
      render json: @newsletter_topic, status: :created, location: @newsletter_topic
    else
      render json: @newsletter_topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /newsletter_topics/1
  def update
    if @newsletter_topic.update(newsletter_topic_params)
      render json: @newsletter_topic
    else
      render json: @newsletter_topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /newsletter_topics/1
  def destroy
    @newsletter_topic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter_topic
      @newsletter_topic = NewsletterTopic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def newsletter_topic_params
      params.require(:newsletter_topic).permit(:newsletter_id, :topic_id)
    end
end
