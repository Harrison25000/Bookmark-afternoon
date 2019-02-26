require 'pg'

class Bookmark
  BOOKMARKS = [{name: "Bookmark1"}, {name: "Bookmark2"}]

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  # def all
  #   @bookmark_list = []
  #   BOOKMARKS.each do |bookmark|
  #     @bookmark_list << bookmark[:name]
  #   end
  #   @bookmark_list
  # end
end
