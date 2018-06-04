# Generic methods that can be used across the project
class Page
  def initialize(driver)
    @driver = driver
  end

  def verify_page
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @driver.find_element(id: 'main') }
  end

  def click_element_by(type, value)
    find_element_by(type, value).click
  end

  def find_element_by(type, value)
    if type == 'class'
      @driver.find_element class: value
    elsif type == 'css'
      @driver.find_element css: value
    elsif type == 'id'
      @driver.find_element id: value
    elsif type == 'link'
      @driver.find_element link: value
    elsif type == 'name'
      @driver.find_element name: value
    elsif type == 'partial_link'
      @driver.find_element partial_link_text: value
    elsif type == 'tag'
      @driver.find_element tag_name: value
    elsif type == 'xpath'
      @driver.find_element xpath: value
    else
      p 'incorrect selector type'
    end
  end

  def cookie_message_present
    # allow the cookie message to load if it's going to it's slow to load
    sleep 2
    cookie_page = find_element_by('css', '.cookies-box')

    if cookie_page.displayed?
      then close_cookie_message
    else
      puts 'cookie box not present'
    end
  end

  def close_cookie_message
    find_element_by('css', 'body > div.cookies-overlay > div > button').click
  end

  def verify_on_expected_page(page_title)
    expectedpage = 'holdingvalue'
    expectedpage.replace page_title
    actualpage = find_element_by('css', '.content-hero-title > h1:nth-child(1)').text
    actualpage == expectedpage
  end
end
