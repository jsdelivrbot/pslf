#app/controllers/users_controller.rb
class UsersController < ApplicationController
   before_action :set_user, only: [:edit, :update, :show]

   def index
       @users = User.all
   end

   def new
       @user = User.new
   end

   def create
       @user = User.new(user_params)
       @user.save
   end

   def edit_individual
      @user = User.find params[:id]
   end

   def update_individual
      @user = User.find params[:id]

   end

   private

   def user_params
      params.require(:user).permit(:fullname, :etc)
   end

   def set_user
       @user = User.find params[:id]
   end

end