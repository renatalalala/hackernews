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

post '/postvote' do
  p params

  user = User.find(params[:user_id])
  post = Post.find(params[:post_id])
  vote_value = params[:value].to_i

  p user, post, vote_value
  Postvote.create(user: user, post: post, vote_value: vote_value)
end
