class Page

def initialize(driver)
  @driver = driver
end

def verify_page
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { @driver.find_element(:id => 'main') }
end

def clickElementBy (type, value)
    findElementBy(type, value).click
end

def findElementBy (type, value)
  if type=="class"
      element=@driver.find_element :class => value
  elsif type=="css"
      element=@driver.find_element :css => value
  elsif type=="id"
      element=@driver.find_element :id => value
  elsif type=="link"
      element=@driver.find_element :link => value
  elsif type=="name"
      element=@driver.find_element :name => value
  elsif type=="partial_link"
      element=@driver.find_element :partial_link_text => value
  elsif type=="tag"
      element=@driver.find_element :tag_name => value
  elsif type=="xpath"
      element=@driver.find_element :xpath => value
  else
      p "incorrect selector type"
  end
end

def cookieMessagePresent
  sleep 2 #allow the cookie message to load if it's going to - it's slow to load
  cookie_page = findElementBy("css", ".cookies-box")

  if cookie_page.displayed?
    then closeCookieMessage
  else
    puts "cookie box not present"
  end
end

def closeCookieMessage
  findElementBy("css", "body > div.cookies-overlay > div > button").click
end

end
