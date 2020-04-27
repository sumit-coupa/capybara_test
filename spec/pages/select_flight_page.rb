module MercuryReservation

	class SelectFlight < SitePrism::Page

			set_url "mercuryreservation2.php"

			#Departure:outFlights
			element :blue_skies_airlines_360, "input[value^='Blue Skies Airlines$360'][name='outFlight']"
			element :blue_skies_airlines_361, "input[value^='Blue Skies Airlines$361'][name='outFlight']"
			element :pangaea_airlines_362, "input[value^='Pangea Airlines$362'][name='outFlight']"
    		element :unified_airlines_363, "input[value^='Unified Airlines$363'][name='outFlight']"

    		#Return:inFlights
			element :blue_skies_airlines_630, "input[value^='Blue Skies Airlines$630'][name='inFlight']"
			element :blue_skies_airlines_631, "input[value^='Blue Skies Airlines$631'][name='inFlight']"
			element :pangaea_airlines_632, "input[value^='Pangea Airlines$632'][name='inFlight']"
    		element :unified_airlines_633, "input[value^='Unified Airlines$633'][name='inFlight']"

    		element :continue_button_page2, "input[name ='reserveFlights']"


    		def select_a_outflight

    			#blue_skies_airlines_361.choose
				#unified_airlines_363.choose
    			#pangaea_airlines_362.choose
    			blue_skies_airlines_360.choose
    		end


    		def select_a_inflight

    			#blue_skies_airlines_631.choose
				#pangaea_airlines_632.choose
    			#unified_airlines_633.choose
    			blue_skies_airlines_630.choose
    		end
	end
end 