Given(/^I vist "([^"]*)"$/) do |url|
  @home.openSite(url)
  @page.cookieMessagePresent
end

When(/^the cookie form is displayed$/) do
  @page.cookieMessagePresent
end

Then(/^I can close the form$/) do
  @page.closeCookieMessage
end

Then(/^I can see the footer has loaded$/) do
  @footer.locate_footer
end

And(/^the copyright text of "([^"]*)" is displayed$/) do |copyright|
  @footer.verify_copyright_text(copyright)
end

When(/^I complete the contact form with:$/) do |table|
  @table = table.rows_hash
  @ContactForm.completeContactForm(@table)
end

Then(/^I can verify the form is complete$/) do
@ContactForm.verify_submit_button
end
