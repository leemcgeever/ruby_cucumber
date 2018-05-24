class Home < Page

  def openSite(url)
    @driver.get url
  end

  def closeCookieMessage
    # cookie_popup:          '.cookies-box',
    # close_cookie_button:   '.add-cookies',
  end

end
