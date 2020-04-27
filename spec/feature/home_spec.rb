feature 'Filght_booking', type: :feature do	
	
	include MercuryReservation

	scenario 'Login' do

		
		@homepage = MercuryReservation::Home.new
		@homepage.load
		@homepage.login_to_application "mercury", "mercury"
		expect(@homepage).to have_content('Flight Details')