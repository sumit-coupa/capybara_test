module MercuryReservation

		class FlightConfirmation < SitePrism::Page

			set_url "mercurypurchase2.php"

			element :back_to_flights, "a[href ='mercuryreservation.php'] > img"
			element :back_to_home, "a[href ='mercurywelcome.php'] > img"
			element :logout_of_application, "a[href ='mercurysignoff.php'] >img"

			def logout
				logout_of_application.click
			end
		end
	end