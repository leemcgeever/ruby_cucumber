Given(/^I vist the home page$/) do
  @home.open_site(BASE_URL)
  @page.cookie_message_present
end

When(/^the cookie form is displayed$/) do
  @page.cookie_message_present
end

Then(/^I can close the form$/) do
  @page.close_cookie_message
end

Then(/^I can see the footer has loaded$/) do
  @footer.locate_footer
end

And(/^the copyright text of "([^"]*)" is displayed$/) do |copyright|
  @footer.verify_copyright_text(copyright)
end

When(/^I complete the contact form with:$/) do |table|
  @table = table.rows_hash
  @contact_form.complete_contact_form(@table)
end

When(/^I navigate to the contact form using the sidebar link$/) do
  @contact_form.sidebar_contact_form
end

Then(/^I can verify the form is complete$/) do
  @contact_form.verify_submit_button
end

Then(/^I am on the "([^"]*)" page$/) do |page_title|
  @page.verify_on_expected_page(page_title)
end
