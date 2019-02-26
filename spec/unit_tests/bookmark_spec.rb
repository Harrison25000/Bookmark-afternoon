 require 'bookmark'
# describe Bookmark do
#   it 'shows a list of bookmarks' do
#     expect(subject.all).to be_a Array
#   end
# end


describe '.all' do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end
end
