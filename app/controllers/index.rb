get '/' do
  @posts = Post.all
  erb :index
end

get '/user/:id/posts' do |id|
  @user = User.find(id)
  erb :user_posts
end

get '/user/:id/comments' do |id|
  @user = User.find(id)
  erb :user_comments
end  

get '/post/:id' do |id|
  @post = Post.find(id)
  erb :post_detailed
end


get '/user/:id' do |id|
  @user = User.find(id)
  erb :user_profile
end
