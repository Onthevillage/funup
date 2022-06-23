class RelationshipsController < ApplicationController

  def create
    current_fun.follow(params[:value_creater_id])
    redirect_to request.referer
  end

  def show
    @value_creater = ValueCreater.find(params[:value_creater_id])
  end

  def destroy
    current_fun.unfollow(params[:value_creater_id])
    redirect_to request.referer  
  end

  def followings
    value_creater = ValueCreater.find(params[:value_creater_id])
    @value_creaters = value_creater.followings
  end

  def followers
    value_creater = ValueCreater.find(params[:value_creater_id])
    @value_creaters = value_creater.followers
  end
end
