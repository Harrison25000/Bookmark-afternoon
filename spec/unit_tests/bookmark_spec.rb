require 'bookmark'
describe Bookmark do
  it 'shows a list of bookmarks' do
    expect(subject.all).to be_a Array
  end
end
