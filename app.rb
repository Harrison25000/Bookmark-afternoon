require 'sinatra/base'

class BookmarkWeb < Sinatra::Base
$bookmarks = [{name: "Bookmark 1"}, {name: "Bookmark 2"}]
  get '/bookmarks' do
    @bookmarks_list = []
    $bookmarks.each do |k| 
      @bookmarks_list << k[:name]
    end
    erb :bookmarks
  end

 run! if app_file == $0
end
