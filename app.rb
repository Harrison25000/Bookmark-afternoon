require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkWeb < Sinatra::Base

  get '/bookmarks' do
    @bookmark_list = Bookmark.new.all
    erb :bookmarks
  end

 run! if app_file == $0
end
