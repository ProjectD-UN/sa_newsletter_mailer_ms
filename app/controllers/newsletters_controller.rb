class NewslettersController < ApplicationController
  before_action :set_newsletter, only: [:show, :update, :destroy]

  # GET /newsletters
  def index
    @newsletters = Newsletter.all

    render json: @newsletters
  end

  # GET /newsletters/1
  def show
    render json: @newsletter
  end

  # POST /newsletters
  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      @topics=params[:topics]
      @topics.each do |this_topic| 
        NewsletterTopic.create(:newsletter_id => @newsletter.id, :topic_id => this_topic)
      end
      render json: @newsletter, status: :created, location: @newsletter
    else
      render json: @newsletter.errors, status: :unprocessable_entity
    end
    

    
    create_newsletter = CreateNewsletter.new

    create_newsletter.subscribe(UserAlerter.new)
       
    create_newsletter.call(@newsletter.id,params[:topics])


  end

  # PATCH/PUT /newsletters/1
  def update
    if @newsletter.update(newsletter_params)
      render json: @newsletter
    else
      render json: @newsletter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /newsletters/1
  def destroy
    @newsletter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def newsletter_params
      params.require(:newsletter).permit(:title, :description, :topics)
    end
end
