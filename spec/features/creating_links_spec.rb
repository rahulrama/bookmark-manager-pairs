feature 'create links' do
  scenario 'add link to a list of links' do
  #Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tag: 'course material')
    visit '/links'
    click_button 'New'
    fill_in :title, with: "Google"
    fill_in :url, with: "https://www.google.co.uk/"
    fill_in :tag, with: "search engine"
    click_button 'Submit'
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
