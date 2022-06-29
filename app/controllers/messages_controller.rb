class MessagesController < ApplicationController
    def index
        @funs = current_fun.value_creater.followers
        @value_creaters = current_fun.followings
    end
end
