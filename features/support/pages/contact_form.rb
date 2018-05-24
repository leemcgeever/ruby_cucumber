# class ContactForm < Page
#   ELEMENTS = Hashie::Mash.new(
#   # css selectors
#     name_field:            'edit-submitted-column1-name',
#     email_field:           'edit-submitted-column1-email',
#     phone_field:           'edit-submitted-column1-phone',
#     company_name_field:    'edit-submitted-column1-company-name',
#     interest_selector:     'contactServiceMenu',
#     message_input_box:     'edit-submitted-column3-message',
#     sign_up_checkbox:      'edit-submitted-column3-sign-up-for-jellyfish-communications-1',
#     submit_button:         '.webform-submit', # Get in touch button
#   )
#
#   def enter_contact_name
#     fill_in(ELEMENTS['name_field']), with: "Contact Page User"
#   end
#
#   def enter_email
#     fill(ELEMENTS['email_field']), with: "email@email.com"
#   end
#
#   def enter_phone
#     phone_field = @driver.find_element(PHONE_FIELD)
#     phone_field.send_keys(phone)
#   end
#
#   def enter_company_name
#     company_name_field = @driver.find_element(COMPANY_NAME_FIELD)
#     company_name_field.send_keys(company_name)
#   end
#
#   # The method selects the first option from the select list
#   # it's item 2 on list as the first one is "Select Service" hardcoded message
#   # this should be a watermark not a list option!!
#   def select_service_from_list
#     @driver.find_element(INTEREST_SELECTOR).click
#     @driver.find_element(css: '.mdl-menu > li:nth-of-type(2)').click
#   end
#
#   def enter_message
#     message_field = @driver.find_element(MESSAGE_INPUT_BOX)
#     message_field.send_keys(message)
#   end
#
#   def click_signup_checkbox
#     @driver.find_element(SIGN_UP_CHECKBOX).click
#   end
#
#   def verify_submit_button
#     @driver.find_element(SUBMIT_BUTTON).displayed?
#   end
# end
