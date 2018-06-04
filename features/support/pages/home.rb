# Home Page Methods
class Home < Page
  def open_site(url)
    @driver.get url
  end
end
