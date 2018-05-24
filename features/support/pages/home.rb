class Home < Page

  ELEMENTS = Hashie::Mash.new(
  # css selectors
    cookie_popup:          '.cookies-box',
    close_cookie_button:   '.add-cookies',

  )
  def openSite(url)
    @driver.get url
  end

  def closeCookieMessage

  end

end
