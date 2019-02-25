class Bookmark
  BOOKMARKS = [{name: "Bookmark1"}, {name: "Bookmark2"}]

  def all
    @bookmark_list = []
    BOOKMARKS.each do |bookmark|
      @bookmark_list << bookmark[:name]
    end
    @bookmark_list
  end
end
