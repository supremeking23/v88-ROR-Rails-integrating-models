class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def edit
        @user =  User.find(params[:id])
    end

    def new
    end


    def create
        @user = User.create(name: params[:name])
        # flash[:success] = "data save"
        redirect_to "/users"
    end

    def total
        render json: {"total": User.all.length}
    end

    def show
        render json: User.find(params[:id])
    end



   


end
