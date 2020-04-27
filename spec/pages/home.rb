 module MercuryReservation

    class Home < SitePrism::Page
    	
    	set_url ""

    	element :username , 'input[name="userName"]'
    	element :password , 'input[name="password"]'

		def login_to_application loginName, loginPassword
			username.set loginName
			password.set loginPassword
			#sleep 4

			login.click
		end 
	end 