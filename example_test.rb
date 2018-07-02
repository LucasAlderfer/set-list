RSpec.describe 'a registered user' do
  context 'visiting /' do
    it 'should see an Add Horse button' do

      visit '/'

      within("#add_horse") do
        expect(page).to have_content('Add Horse')
      end

    end

    it 'clicking the Add Horse button should redirect to a New Horse page' do

      visit '/'

      click_button('Add Horse')

      expect(current_path).to eq('/new')

    end
  end

  context 'visiting /new' do
    it 'should see an Add Horse form' do

      visit '/new'

      within("#new_horse_form") do
        expect(page).to have_content('submit')
      end
    end

    it 'when I click submit my new horse is saved and I visit /' do

      visit '/new'

      fill_in("#new_horse_form", with: 'Lucky')

      click_button('submit')

      expect(current_path).to eq('/')

      expect(page).to have_content('Lucky')
    end
  end
end
