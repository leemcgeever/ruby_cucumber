class Footer < Page

  def locate_footer
    footer = findElementBy("css", "#footer > div" ).displayed?
  end

  def verify_copyright_text(copyright)
    message = findElementBy("css", "#footer > div > div > div > div.footer-links > div > span").text
    message == copyright
  end
end
