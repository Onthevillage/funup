class RelationshipsController < ApplicationController

  def create
    value_creater = ValueCreater.find(params[:value_creater_id])
    if value_creater.fun_id != current_fun.id
    current_fun.follow(params[:value_creater_id])
    redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    current_fun.unfollow(params[:value_creater_id])
    redirect_to request.referer  
  end

  def followings
    value_creater = ValueCreater.find_by(fun_id: params[:fun_id])
    @value_creaters = value_creater.followings
  end

  def followers
    fun = Fun.find(params[:fun_id])
    value_creater = ValueCreater.find(fun.value_creater)
    @value_creaters = value_creater.followers
  end
end
