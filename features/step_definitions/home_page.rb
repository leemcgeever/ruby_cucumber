Given(/^I vist the home page$/) do
  @home.openSite($BASE_URL)
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

When(/^I navigate to the contact form using the sidebar link$/) do
  @ContactForm.sidebarContactForm
end

Then(/^I can verify the form is complete$/) do
  @ContactForm.verify_submit_button
end


Then(/^I am on the "([^"]*)" page$/) do |page_title|
  @page.verifyOnExpectedPage(page_title)
end
