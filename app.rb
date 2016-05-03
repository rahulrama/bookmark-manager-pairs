require 'sinatra/base'
require './app/models/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    @bookmarks = Bookmark.all
    erb :index
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
