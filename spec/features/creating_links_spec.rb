feature 'creating a new link' do

  scenario 'creating a new link' do
    visit '/links'
    click_button 'Add Link'
    fill_in :title, with: 'Google'
    fill_in :url,  with: 'www.google.com'
    click_button 'Submit'
    within 'ul#links' do
      expect(page).to have_content 'Google'
      expect(page).to have_content 'www.google.com'
    end

  end

end