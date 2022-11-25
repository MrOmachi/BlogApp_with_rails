require 'rails_helper'

RSpec.describe Post, type: :model do 
     before(:all) do 
          @user = User.new(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
          @post = Post.new(title: 'My first post', text: 'This is my first post.', author: @user, comments_counter: 4, likes_counter: 6)
     end

     context 'Test implementation to post model'


end


