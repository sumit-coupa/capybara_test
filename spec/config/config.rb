require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

def configuration_capybara_test
Capybara.app_host = 'http://www.newtours.demoaut.com/'
Capybara.run_server = false
Capybara.default_driver = :selenium_chrome
end

