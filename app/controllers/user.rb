enable :sessions

get '/sign_up' do
  erb :sign_up
end

post '/sign_up' do
  User.create(params)
  redirect '/'
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by_email(params[:email])
  
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
