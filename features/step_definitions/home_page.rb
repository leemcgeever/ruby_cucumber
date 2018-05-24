Given(/^I vist "([^"]*)"$/) do |url|
  @home.openSite(url)
end

Then(/^I can see the footer has loaded$/) do
  @footer.locate_footer
end

And(/^the copyright text of "([^"]*)" is displayed$/) do |copyright|
  @footer.verify_copyright_text(copyright)
end
