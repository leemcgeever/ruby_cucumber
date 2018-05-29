class Home < Page

  def openSite(url)
    @driver.get url
  end

end
