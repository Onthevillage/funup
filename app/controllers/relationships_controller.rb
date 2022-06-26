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

  def followers
    value_creater = ValueCreater.find_by(fun_id: params[:fun_id])
    unless value_creater.nil?
       @funs = value_creater.followers
    else
      redirect_to root_path
    end
  end

  def followings
    fun = Fun.find_by(id: params[:fun_id])
    unless fun.nil?
       @value_creaters = fun.followings
    else
      redirect_to root_path
    end
  end

end