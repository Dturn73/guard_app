require 'rails_helper'

feature 'questionnaire' do
	scenario 'says correct when the right answer is given' do
		visit('/')
		click_link('Take the security guard test')
		check('Security guards are not cops')
		click_button('Submit')
		expect(page).to have_content('You are correct')
	end
end	
