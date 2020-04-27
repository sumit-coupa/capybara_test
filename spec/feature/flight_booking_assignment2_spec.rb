require 'site_prism'
require 'pages/home.rb'
require 'pages/flight_finder_page.rb'
require 'pages/select_flight_page.rb'
require 'pages/book_a_flight_page.rb'
require 'pages/flight_confirmation_page.rb'



	feature "Automation of MercuryFilght web application", type: :feature do 

		include MercuryReservation

		scenario "booking of flight" do
			#logging to application
			@homepage=MercuryReservation::Home.new
			@homepage.load
			@homepage.login_to_application 'mercury', 'mercury'
			expect(@homepage).to have_content('Flight Details')
			#find flight
			@findflights=MercuryReservation::FindFlights.new
			#@findflights.load
			@findflights.find_a_flight
			#select flight
			@selectflight=MercuryReservation::SelectFlight.new
			#@selectflight.load
			@selectflight.select_a_outflight
			@selectflight.select_a_inflight
			@selectflight.continue_button_page2.click
			#book a flight
			@bookflight=MercuryReservation::BookFlight.new
			@bookflight.add_passenger_details 'Sumit', 'Titare' , 'Vegetarian'
			@bookflight.add_credit_card_details	'Carte Blanche', 'a21bd256ew6w', '2006','06','Sumit', 'Vinod', 'Titare' 
			@bookflight.add_billing_address 'Walhekar Nagar', 'Lane no 6', 'Pune', 'Maharashtra', '425001', 'India'
			@bookflight.add_delivery_address 'BDCOE', 'Sevagram', 'Wardha', 'Maharashtra', '442102', 'India'
			@bookflight.secure_purchase.click
			#flight confirmation
			@flightconfirm=MercuryReservation::FlightConfirmation.new
			#@flightconfirm.load
			@flightconfirm.logout_of_application
		end

	end