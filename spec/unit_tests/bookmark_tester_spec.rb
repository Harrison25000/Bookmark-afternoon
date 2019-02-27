require 'bookmark_tester'
describe '.all' do
  it "takes from database" do
    bookmarks = BookmarkTester.all
    expect(bookmarks).to include 'blah blah' 
  end
end
