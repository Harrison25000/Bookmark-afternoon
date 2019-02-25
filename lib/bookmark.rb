
class Bookmark
  BOOKMARKS = [{name: "Bookmark 1"}, {name: "Bookmark 2"}]
  def all
    @bookmarks_list = []
    BOOKMARKS.each do |k|
    @bookmarks_list << k[:name]
    end
  end
end
