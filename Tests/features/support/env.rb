require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'capybara/cucumber'
require 'pry'
require 'ostruct'
require 'watir'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

  ENVIRONMENT = ENV['ENVIRONMENT']
  ENVIRONMENT_CONFIG =  YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
  puts ENVIRONMENT_CONFIG
  URL = ENVIRONMENT_CONFIG['url']

 World(PageObjects)
 World(Helper)

 Capybara.register_driver :my_chrome do |app|
#     caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => 
#         {"args" => ["--ignore-ssl-erros", "--ignore-certificate-erros", "--disable-popup-blocking","--incognito", "--start-maximized", "--disable-gpu", 
#             "--disable-impl-side-painting", "--acceptInsecureCerts=true", "--disable-translate", "--no-sandbox", "window-size=1420,835"]})

      if ENV['HEADLESS']
          caps["goog:chromeOptions"]["args"] << '--headless'
          caps["goog:chromeOptions"]["args"] << '--disable-site-isolation-trials'
      end

     client = Selenium::WebDriver::Remote::Http::Default.new
     client.read_timeout = 90

     puts "Raising Driver..."
     #Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: caps, http_client: client)
 end

Capybara.default_driver = :selenium_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 15