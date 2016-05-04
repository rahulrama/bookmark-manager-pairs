feature 'display links list' do
  scenario 'displays a list of links' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tag: 'course material')
    visit '/'
    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end
