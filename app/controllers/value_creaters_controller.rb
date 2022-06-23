class ValueCreatersController < ApplicationController
    def index
        @value_creaters = ValueCreater.all
    end

    def new
        @value_creater = ValueCreater.new
    end

    def create
        @value_creater = ValueCreater.create(value_creater_params)
    end

    def show
        @value_creater = ValueCreater.find(params[:id])
    end

    private
    def value_creater_params
        params.require(:value_creater).permit(:image, :name_workplace, :address_workplace, :introduction).merge(fun_id: current_fun.id)
    end
end
