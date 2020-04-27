module MercuryReservation

		class FindFlights < SitePrism::Page

			set_url "mercuryreservation.php"

			element :round_trip, :xpath ,"//input[@value = 'roundtrip']"
			element :oneway_trip, :xpath ,"//input[@value = 'oneway']"
			element :passengers, 'select[name="passCount"]'
			element :departing_from, "select[name = 'fromPort']"
			element :departure_month, "select[name = 'fromMonth']"
			element :departure_day, "select[name = 'fromDay']"
			element :arrival_in, "select[name = 'toPort']"
			element :return_month, "select[name = 'toMonth']"
			element :return_day, "select[name = 'toDay']"
			element :economy_class, :xpath, "//input[@value = 'Coach']"
			element :business_class, :xpath, "//input[@value = 'Business']"
			element :first_class, :xpath, "//input[@value = 'First']"
			element :airline, "select[name = 'airline']"
			element :continue_button_page1, "input[name ='findFlights']"


			def find_a_flight
				#Page2: /mercuryreservation.php
				round_trip.choose
				oneway_trip.choose
				passengers.select('1')
				departing_from.select("San Francisco")
				departure_month.select("April")
				departure_day.select("12")
				arrival_in.select("London")
				return_month.select("April")
				return_day.select("16")

				economy_class.choose
				business_class.choose
				first_class.choose

				airline.select("Blue Skies Airlines")
				continue_button_page1.click
			end


		end
end 