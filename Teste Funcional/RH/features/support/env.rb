require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium
    
end 

Capybara.default_max_wait_time = 5 
