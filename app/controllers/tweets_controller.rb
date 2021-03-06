  class TweetsController < ApplicationController

    before_action :move_to_index, except: :index

    def index
      @tweets = Tweet.includes(:user).page(params[:page]).per(20).order("created_at DESC")
    end

    def new
    end

    def create
      Tweet.create(image: tweet_params[:image], restname: tweet_params[:restname], text: tweet_params[:text], user_id: current_user.id)
    end

    private
    def tweet_params
      params.permit(:image, :restname, :text)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

  end
