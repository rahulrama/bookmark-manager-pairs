require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  get '/add' do
    erb(:add)
  end

  post '/add' do
    session[:name]= params[:name]
    session[:link]= params[:link]
    session[:tag]= params[:tag]
    Link.create(name:params[:name], link:params[:link], tag:params[:tag] )
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
