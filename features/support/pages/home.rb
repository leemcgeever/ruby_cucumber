# Home Page Methods
class Home < Page
  def open_site(url)
    @driver.get url
  end

  def locale_selection(locale)
    find_element_by('css', 'div.language-selector-wrapper:nth-child(2) > div:nth-child(1) > button:nth-child(1)').click
    sleep 3
    find_element_by('id', locale).click
  end

  def cofirm_locale_selection(expected_locale)
    find_element_by('css', 'div.language-selector-wrapper:nth-child(2)').text == expected_locale
  end
end
