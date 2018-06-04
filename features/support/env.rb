require 'rubygems'
require 'cucumber'
require 'pry'
require 'selenium-webdriver'
require 'yaml'

ENV['TEST_ENV'] ||= 'test'
project_root = File.expand_path('..', __dir__)
BASE_URL = YAML.load_file(project_root + '/config/config.yml')[ENV['TEST_ENV']][:url]

Before do |_scenario|
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.timeouts.implicit_wait = 60
  @driver.manage.timeouts.script_timeout = 60
  @driver.manage.timeouts.page_load = 60
  @home = Home.new(@driver)
  @page = Page.new(@driver)
  @footer = Footer.new(@driver)
  @contact_form = ContactForm.new(@driver)
end

After do |_scenario|
  @driver.quit
end
