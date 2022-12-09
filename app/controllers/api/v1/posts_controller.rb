class Api::V1::PostsController < ApplicationController

     before_action :find_user


     def index 
          post = Post.where(author_id: params[:user_id])
          # posts = user.post 

          if post 
               render json: post, status: :ok 
          else
               render json: { message: 'No post found'}, status: :not_found
     end
end

          def show

     private

     def find_user
          @user = User.find(params[:user_id])
          rescue ActiveRecord::RecordNotFound
               render json: { message: 'User not found'}, status: :not_found
          end
end