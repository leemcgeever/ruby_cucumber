# Methods for Footer Tests
class Footer < Page
  def locate_footer
    find_element_by('css', '#footer > div').displayed?
  end

  def verify_copyright_text(copyright)
    message = find_element_by('css', '#footer > div > div > div > div.footer-links > div > span').text
    message == copyright
  end
end
