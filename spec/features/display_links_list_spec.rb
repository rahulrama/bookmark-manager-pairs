feature 'display links list' do
  scenario 'displays a list of links' do
    #Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tag: 'course material')
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end
