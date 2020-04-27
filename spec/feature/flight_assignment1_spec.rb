require 'capybara/rspec'
require 'webdrivers'
require 'pry'

feature 'Automation of New tours demoaut website', type: :feature do
      Capybara.app_host = 'http://www.newtours.demoaut.com/'
      Capybara.run_server = false
      Capybara.default_driver = :selenium_chrome


          scenario 'Book a flight' do
            visit '/'
            expect(page.title).to have_content('Mercury')
            fill_in 'userName', with: 'mercury'
            fill_in 'password', with: 'mercury'
            click_on('login')


            #Page2: /mercuryreservation.php
            expect(page).to have_content('Flight Details')
            find(:xpath, ".//input[@value='roundtrip']").click
            find(:xpath,".//input[@value='oneway']").click
            select('1', :from => 'passCount')
            select('San Francisco', :from=>'fromPort')
            select('March', :from=>'fromMonth')
            select('4', :from=>'fromDay')

            sleep 1

            select('New York', :from => 'toPort')
            select('April', :from => 'toMonth')
            select('6', :from => 'toDay')

            sleep 3

            select('Blue Skies Airlines', :from => 'airline')
            find(:xpath,".//input[@value='First']").click

            sleep 2

            click_on('findFlights')


            #Page3: /mercuryreservation2.php
            expect(page).to have_content('SELECT FLIGHT')

            sleep 1

            click_on('reserveFlights')


            #Page4: /mercurypurchase.php
            expect(page).to have_content('Total Price (including taxes): $584')
            fill_in 'passFirst0', with: 'Sumit'
            fill_in 'passLast0', with: 'Vinod'
            select('Vegetarian', :from => 'pass.0.meal')
            select('Carte Blanche', :from => 'creditCard')
            fill_in 'creditnumber', with: 'ahaw236363fe'

            sleep 3

            select('01', :from => 'cc_exp_dt_mn')
            select('2010', :from => 'cc_exp_dt_yr')
            fill_in 'cc_frst_name', with: 'Sumit'
            fill_in 'cc_mid_name', with: 'Vinod'
            fill_in 'cc_last_name', with: 'Titare'

            sleep 1

            fill_in 'billAddress2', with: 'San Mateo'
            click_on('buyFlights')


            #Page5: /mercurypurchase2.php

            sleep 3

            expect(page).to have_content('Your itinerary has been booked!')
            find("a[href='mercurysignoff.php']>img").click
            expect(page).to have_content('SIGN-ON')

          end

end