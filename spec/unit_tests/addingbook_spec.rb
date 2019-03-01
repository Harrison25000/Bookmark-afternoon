require 'bookmark'
describe '.create' do
  it 'adds a bookmark' do
    Bookmark.create(url: 'http://www.testbookmark.com')
    expect(Bookmark.all).to include 'http://www.testbookmark.com'
  end
end
