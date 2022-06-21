class ValueCreatersController < ApplicationController
    def new
    end

    def create
        binding.pry
        ValueCreater.create(value_creater_params)
    end

    private
    def value_creater_params
        params.require(:value_creater).permit(:name_workplace, :address_workplace, :introduction).merge(fun_id: current_fun.id)
    end
end
