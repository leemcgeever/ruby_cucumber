# Methods for the Contact Form completion anbd verification
class ContactForm < Page
  def complete_contact_form(table)
    enter_contact_name(table)
    enter_email(table)
    enter_phone(table)
    enter_company_name(table)
    select_service_from_list
    enter_message(table)
    verify_signup_checkbox
    verify_captcha_present
  end

  def enter_contact_name(table)
    contactname = find_element_by('id', 'edit-submitted-column1-name')
    @driver.execute_script('arguments[0].scrollIntoView(true);', contactname)
    contact_name_data = table['contactname']
    contactname.send_keys(contact_name_data)
  end

  def enter_email(table)
    email = find_element_by('id', 'edit-submitted-column1-email')
    email_data = table['email']
    email.send_keys(email_data)
  end

  def enter_phone(table)
    phone = find_element_by('id', 'edit-submitted-column1-phone')
    phone_data = table['phone']
    phone.send_keys(phone_data)
  end

  def enter_company_name(table)
    company_name = find_element_by('id', 'edit-submitted-column1-company-name')
    company_name_data = table['company_name']
    company_name.send_keys(company_name_data)
  end

  # The method selects the first option from the select list
  # it's item 2 on list as the first one is "Select Service" hardcoded message
  # this should be a watermark not a list option!!
  def select_service_from_list
    find_element_by('id', 'contactServiceMenu').click
    find_element_by('css', '.mdl-menu > li:nth-of-type(2)').click
  end

  def enter_message(table)
    message = find_element_by('id', 'edit-submitted-column3-message')
    message_data = table['message']
    message.send_keys(message_data)
  end

  def verify_signup_checkbox
    find_element_by('id', 'edit-submitted-column3-sign-up-for-jellyfish-communications-1').click
  end

  def verify_captcha_present
    find_element_by('class', 'g-recaptcha').displayed?
  end

  def click_submit_contact_form
    find_element_by('css', '.webform-submit').click
  end

  def verify_recaptcha_errors(recaptcha_error)
    find_element_by('css', '.recaptcha_error').text == recaptcha_error
  end

  def click_sidebar_contact_form
    find_element_by('css', '.top-menu > li:nth-child(11) > a:nth-child(2)').click
  end
end
