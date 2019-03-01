feature 'Adding bookmarks' do
  scenario 'The user can add a bookmark' do
    visit '/bookmarks/new'
    fill_in 'url', with: 'http://testbookmark.com'
    fill_in 'title' with: 'test title'
    click_button 'Submit'
    expect(page).to have_content ("http://testbookmark.com", href: "http://testbookmark.com")
  end
end
