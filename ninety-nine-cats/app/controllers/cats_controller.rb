class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    private

    def cat_params
        params.require(:cat).permit(:name, :birth_date, :sex, :color, :description)
    end

end