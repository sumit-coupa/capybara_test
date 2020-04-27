module MercuryReservation

	class BookFlight < SitePrism::Page

			set_url "mercurypurchase.php"

			#Passengers
			element :first_name, "input[name='passFirst0']"
			element :last_name, "input[name ='passLast0']"
			element :meal, "select[name='pass.0.meal']"
			#Credit card
			element :card, "select[name='creditCard']"
			element :card_number, "input[name='creditnumber']"
			element :card_expiration_date, "select[name='cc_exp_dt_mn']"
			element :card_expiration_year, "select[name='cc_exp_dt_yr']"
			element :card_first_name, "input[name='cc_frst_name']"
			element :card_middle_name, "input[name='cc_mid_name']"
			element :card_last_name, "input[name='cc_last_name']"
			#billing address
			element :bill_address_line_1, "input[name='billAddress1']"
		    element :bill_address_line_2, "input[name='billAddress2']"
			element :bill_ticketless_travel, :xpath, "(//input[@value='checkbox'])[1]"
		    element :bill_city, "input[name='billCity']"
		    element :bill_state, "input[name='billState']"
		    element :bill_postal, "input[name='billZip']"
		    element :bill_country, "select[name='billCountry']"

		    #delivery address
		    element :del_address_line_1, "input[name='delAddress1']"
		    element :del_address_line_2, "input[name='delAddress2']"
			element :same_as_billing, :xpath, "(//input[@value='checkbox'])[2]"
		    element :del_city, "input[name='delCity']"
		    element :del_state, "input[name='delState']"
		    element :del_postal, "input[name='delZip']"
		    element :del_country, "select[name='delCountry']"

    		element :secure_purchase, "input[name ='buyFlights']"



    		def add_passenger_details firstName1, lastName1 , mealType

    			self.first_name.set firstName1
				self.last_name.set lastName1
				meal.select(mealType)
    		end

    		def add_credit_card_details	cardType, cardNumber, expiryYear,expiryDate,firstName, midName, lastName 
    			card.select(cardType)
				card_number.set(cardNumber)
				card_expiration_year.select(expiryYear)
				card_expiration_date.select(expiryDate)
				card_first_name.set firstName
				card_middle_name.set midName
				card_last_name.set lastName 
    		end

    		def add_billing_address address1, address2, city, state, postalCode, country
    			bill_address_line_1.set address1
    			bill_address_line_2.set address2
    			bill_ticketless_travel.click
    			bill_city.set city
    			bill_state.set state
    			bill_postal.set postalCode
    			bill_country.set country
    		end

    		def add_delivery_address address1, address2, city, state, postalCode, country
    			del_address_line_1.set address1
    			del_address_line_2.set address2
    			same_as_billing.click
    			del_city.set city
    			del_state.set state
    			del_postal.set postalCode
    			del_country.set country
    		end
	end
end