require 'rails_helper'

RSpec.describe 'Merchants Index' do
   it "can visit merchants index page and pull data from API" do
      visit '/merchants'

      expect(page).to have_content('Schroeder-Jerde')
      expect(page).to have_content('Willms and Sons')
      expect(page).to have_content('Cummings-Thiel')
    end

   it "can visit merchant show page with link from index and displays merchant items" do
      visit '/merchants'

      click_link 'Schroeder-Jerde'

      expect(page).to have_content('List of Items')
   end
end