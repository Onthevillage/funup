class MessagesController < ApplicationController
    def index
        @funs = current_fun.value_creater.followers
        @value_creaters = current_fun.followings 
    end

    def new
        @funs = current_fun.value_creater.followers
        @value_creaters = current_fun.followings 
        if params[:fun_id]
            @partner_name = Fun.find(params[:fun_id])
            @partner_create_path = Fun.find(params[:fun_id])
        elsif params[:value_creater_id]
            value_creater = ValueCreater.find(params[:value_creater_id])
            @partner_name = value_creater.fun
            @partner_create_path = value_creater
        end
    end

    def create
        message = Message.new

    end

    private

    def message_params
        params.require(:message).permit(:type_id, :content).merge(user_id: current_fun.id)
    end
end
