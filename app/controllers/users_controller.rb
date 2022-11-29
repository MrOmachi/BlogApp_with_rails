class UsersController < ApplicationController
     def index
          @users = User.all 
     end

     def show
          @users.find(params[:id])
     end
end