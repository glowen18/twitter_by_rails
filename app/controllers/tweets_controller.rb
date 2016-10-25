class TweetsController < ApplicationController
  before_action :set_tweet, only:[:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      redirect_to :tweets
    else
      render :new
    end
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
  end

  def update
    if @tweet.update_attributes(tweet_params)
      redirect_to tweets_path
    else
      render :exit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

  private
    def tweet_params
      params.require(:tweet).permit(:name, :email, :content)
    end

    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
end
