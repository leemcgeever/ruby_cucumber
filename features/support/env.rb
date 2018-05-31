require 'rubygems'
require 'cucumber'
require 'pry'
require 'selenium-webdriver'

Before do |scenario|
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.timeouts.implicit_wait = 60
  @driver.manage.timeouts.script_timeout = 60
  @driver.manage.timeouts.page_load = 60
  @home = Home.new(@driver)
  @page = Page.new(@driver)
  @footer = Footer.new(@driver)
  @ContactForm = ContactForm.new(@driver)
end

After do |scenario|
  @driver.quit
end
