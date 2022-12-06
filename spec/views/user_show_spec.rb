require 'rails_helper'

RSpec.describe 'user show ', type: :feature do
     before(:each) do
       @user = User.create(name: 'John', photo: 'https://i.imgur.com/1JZrO7A.jpg', bio: 'bio1', posts_counter: 2)
       @user.save!
       @post = Post.create(title: 'post1', text: 'text1', comments_counter: 0, likes_counter: 0, author: @user)
       @post2 = Post.create(title: 'post2', text: 'text2', comments_counter: 0, likes_counter: 0, author: @user)
       @post3 = Post.create(title: 'post3', text: 'text3', comments_counter: 0, likes_counter: 0, author: @user)
       visit user_path(id: @user)
     end
   
     it 'should show the user photo' do
       expect(page).to have_css("img[src*='https://i.imgur.com/1JZrO7A.jpg']")
     end

     it 'should show the user name' do
      expect(page).to have_content(@user.name)
    end
end

     